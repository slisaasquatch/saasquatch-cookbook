
def file_contains(fn, str)
  File.foreach(fn).any?{ |l| l[str] }
end

def file_append(fn, str)
  open(fn, 'a') { |f| f.puts(str) }
end

def bash_script_name
  '/home/vagrant/.bashrc'
end

def bash_script_contains(str)
  file_contains(bash_script_name, str)
end

def bash_script_append(str)
  file_append(bash_script_name, str)
end

def construct_export_line(key, val)
  key.strip!
  return '' if key.empty?
  val = '"' + val + '"' unless val.start_with?('"') && val.end_with?('"')
  return 'export ' + key + '=' + val
end

def add_env(key, val)
  export_line = construct_export_line(key, val)
  bash_script_append(export_line) unless bash_script_contains(export_line)
  execute 'set env ' + key do
    command export_line
  end
end


log 'Finished configuring env variables'
