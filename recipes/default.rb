include_recipe 'git'
include_recipe 'java'
include_recipe 'mongodb3'
include_recipe 'nodejs::nodejs_from_binary'
# For some reason the following line will hang if sbt is already installed
include_recipe 'chef-sbt' unless system('which sbt')
include_recipe 'zip'

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

# execute 'download_zip' do
#   command 'wget '
#   creates 'saasquatch-1.3.0.zip'
#   cwd Constants.user_home
# end

# execute 'unzip' do
#   command 'unzip saasquatch-1.3.0.zip'
#   creates 'saasquatch-1.3.0'
#   cwd Constants.user_home
# end

# execute 'chmod_saasquatch' do
#   command 'chmod +x bin/saasquatch'
#   cwd Constants.user_home + '/saasquatch'
# end

log 'This is useless'
