#!/usr/bin/env bats

@test "Check default node version" {
  run node -v
  [ "$status" -eq 0 ]
  [ $(expr "$output" : ".*v1.4.2") -ne 0 ]
}
