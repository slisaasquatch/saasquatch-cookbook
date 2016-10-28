#!/usr/bin/env bats

@test "_JAVA_OPTIONS set" {
  [ -v $_JAVA_OPTIONS ]
}

@test "MONGO_DB_USER set" {
  [ -v $MONGO_DB_USER ]
}

@test "SBT_OPTS set" {
  [ -v $SBT_OPTS ]
}
