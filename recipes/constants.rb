module Constants

  def self.user_home
    '/home/vagrant'
  end

  def self.saasquatch_dir_name
    'saasquatch-1.3.0'
  end

  def self.saasquatch_dir_abs
    user_home + '/' + saasquatch_dir_name
  end

  def self.saasquatch_zip_name
    'saasquatch-1.3.0.zip'
  end

end
