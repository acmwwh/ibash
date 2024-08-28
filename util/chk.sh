#!/usr/bin/env bash

source "$(dirname "${BASH_SOURCE[0]}")"/log.sh

# check whether path exists
function chk_path() {
  local path=$1
  # count: retry count
  local count=$2
  [ -z "$count" ] && count=3
  # interval: retry interval /s
  local interval=$3
  [ -z "$interval" ] && interval=10

  for ((i=0; i<count; i++));do
    [ -e "$path" ] && return 0
    if [[ $i -eq $((count - 1)) ]];then
      log_err "$path not exists"
      return 1
    else
      log_warn "$path not exists. Waiting for $interval seconds before re-checking..."
      sleep "$interval"
    fi
  done
  return 1
}
