# The geoip cookbook on Chef Supermarket is not working

require_relative 'constants.rb'
require_relative 'env_util.rb'

GEOIP_DIR = '/usr/local/share/GeoIP'
GEOIP_FN = 'GeoLite2-City.mmdb'
GEOIP_ABS = GEOIP_DIR + '/' + GEOIP_FN

if File.file?(GEOIP_ABS) then
  log 'GeoIP already installed'
else
  directory GEOIP_DIR do
    action :create
  end

  execute 'download_geoip' do
    command 'wget http://geolite.maxmind.com/download/geoip/database/GeoLite2-City.mmdb.gz'
    cwd GEOIP_DIR
  end

  execute 'unzip_geoip' do
    command 'gzip -d ' + GEOIP_FN + '.gz'
    cwd GEOIP_DIR
  end
end

log 'Done installing GeoIP'

EnvUtil.add_env('MAXMIND_DB_PATH', GEOIP_ABS)

log 'Done setting GeoIP env variable'
