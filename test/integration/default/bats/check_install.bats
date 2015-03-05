#!/usr/bin/env bats

IOJS_VERSION=v1.4.3

@test "Check default node version" {
  run node -v
  [ "$status" -eq 0 ]
  [ $(expr "$output" : "${IOJS_VERSION}") -ne 0 ]
}

@test "Check iojs symlink" {
  run file /usr/local/bin/iojs
  [ "$status" -eq 0 ]
  [ $(expr "$output" : "/usr/local/bin/iojs: symbolic link to .*/usr/local/lib/iojs-${IOJS_VERSION}-linux-x64/bin/iojs") -ne 0 ]
}

@test "Check node symlink" {
  run file /usr/local/bin/node
  [ "$status" -eq 0 ]
  [ $(expr "$output" : "/usr/local/bin/node: symbolic link to .*/usr/local/lib/iojs-${IOJS_VERSION}-linux-x64/bin/node") -ne 0 ]
}

@test "Check npm symlink" {
  run file /usr/local/bin/npm
  [ "$status" -eq 0 ]
  [ $(expr "$output" : "/usr/local/bin/npm: symbolic link to .*/usr/local/lib/iojs-${IOJS_VERSION}-linux-x64/bin/npm") -ne 0 ]
}
