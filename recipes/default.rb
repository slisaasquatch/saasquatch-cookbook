include_recipe 'git'
include_recipe 'java'
include_recipe 'nodejs::nodejs_from_binary'
# For some reason the following line will hang if sbt is already installed
include_recipe 'chef-sbt' unless system('which sbt')
include_recipe 'zip'

execute 'clone_repo' do
  command 'git clone -b play23 https://TODO@github.com/yupiq/saasquatch.git'
  creates 'saasquatch'
  cwd '/home/vagrant'
end

log 'Finished cloning repo'

# execute 'sbt_dist' do
#   command 'sbt dist'
#   creates 'target/universal/saasquatch-1.3.0.zip'
#   cwd 'home/vagrant/saasquatch'
# end

# execute 'unzip' do
#
# end

log 'This is useless'
