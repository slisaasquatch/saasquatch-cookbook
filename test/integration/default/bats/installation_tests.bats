#!/usr/bin/env bats

@test "git binary is found in PATH" {
  run which git
  [ "$status" -eq 0 ]
}

@test "java binary is found in PATH" {
  run which java
  [ "$status" -eq 0 ]
}

@test "mongo binary is found in PATH" {
  run which mongo
  [ "$status" -eq 0 ]
}

@test "npm binary is found in PATH" {
  run which npm
  [ "$status" -eq 0 ]
}

@test "sbt binary is found in PATH" {
  run which sbt
  [ "$status" -eq 0 ]
}

@test "unzip binary is found in PATH" {
  run which unzip
  [ "$status" -eq 0 ]
}

@test "zip binary is found in PATH" {
  run which zip
  [ "$status" -eq 0 ]
}
