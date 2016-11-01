include_recipe 'git'
include_recipe 'java'
include_recipe 'mongodb3'
include_recipe 'nodejs::nodejs_from_binary'
# For some reason the following line will hang if sbt is already installed
include_recipe 'chef-sbt' unless system('which sbt')
include_recipe 'zip'

include_recipe 'saasquatch::install_geoip'
