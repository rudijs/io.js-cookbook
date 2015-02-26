#!/usr/bin/env bats

@test "Check node version" {
  run node -v
  [ "$status" -eq 0 ]
  [ $(expr "$output" : ".*v1.3.0") -ne 0 ]
}
