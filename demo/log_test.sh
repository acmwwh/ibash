#!/usr/bin/env bash

# shellcheck source=../util/log.sh
source "$(dirname "${BASH_SOURCE[0]}")"/../util/log.sh

LOG_LEVEL=1

log_debug "This is a debug message."
log_info "This is a info message."
log_warn "This is a warn message."
log_err "This is a error message."
log_always "This is a always message."
