module EnvUtil

  def self.file_contains(fn, str)
    File.foreach(fn).any?{ |l| l[str] }
  end

  def self.file_append(fn, str)
    open(fn, 'a') { |f| f.puts(str) }
  end

  def self.bash_script_name
    '/home/vagrant/.bashrc'
  end

  def self.add_env(key, val)
    export_line = construct_export_line(key, val)
    file_append(bash_script_name, export_line) unless file_contains(bash_script_name, export_line)
    # execute 'set env ' + key do
    #   command export_line
    # end
    system(export_line)
  end

  def self.construct_export_line(key, val)
    key.strip!
    return '' if key.empty? || val.empty?
    val = '"' + val + '"' unless val.start_with?('"') && val.end_with?('"')
    return 'export ' + key + '=' + val
  end

end
