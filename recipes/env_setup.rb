
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
  trimmedKey = key.strip
  if trimmedKey.nil? then
    trimmedKey = key
  end
  if trimmedKey.empty? then
    return ''
  end
  # if val.start_with?(' ') || val.end_with?(' ') then
  if val.include?(' ') && !(val.start_with?('"') && val.end_with?('"')) then
    val = '"' + val + '"'
  end
  return 'export ' + key + '=' + val
end

def add_env(key, val)
  export_line = construct_export_line(key, val)
  unless bash_script_contains(export_line) then
    bash_script_append(export_line)
  end
end

script 'env_setup' do
  interpreter 'bash'
  code <<-EOH
    TODO
  EOH
end

log 'Finished configuring env variables'
