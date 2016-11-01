
require_relative 'constants.rb'

# execute 'clone_repo' do
#   command 'git clone -b play23 https://TODO@github.com/yupiq/saasquatch.git'
#   creates 'saasquatch'
#   cwd Constants.user_home
# end
#
# log 'Finished cloning repo'

# execute 'sbt_dist' do
#   command 'sbt dist'
#   creates 'target/universal/saasquatch-1.3.0.zip'
#   cwd Constants.user_home + '/saasquatch'
# end

execute 'download_zip' do
  command 'wget TODO'
  creates Constants.saasquatch_zip_name
  cwd Constants.user_home
end

execute 'unzip' do
  command 'unzip ' + Constants.saasquatch_zip_name
  creates Constants.saasquatch_dir_name
  cwd Constants.user_home
end

execute 'chmod_saasquatch_dir' do
  command 'chmod o+w ' + Constants.saasquatch_dir_abs
end

execute 'chmod_executable' do
  command 'chmod +x bin/saasquatch'
  cwd Constants.saasquatch_dir_abs
end

log 'This is useless'
