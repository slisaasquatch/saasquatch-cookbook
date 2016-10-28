#!/usr/bin/env bats

@test "geoip mmdb file exists" {
  [ -f /home/vagrant/geoip/GeoLite2-City.mmdb ]
}
