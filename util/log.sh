#!/usr/bin/env bash

# log level debug-1, info-2, warn-3, error-4, always-5
# level > 5, no output
LOG_LEVEL=2

# log file
LOG_FILE=./log.txt

# white for debug
function log_debug() {
    local content
    content="[DEBUG] $(date '+%Y-%m-%d %H:%M:%S') $*"
    [ $LOG_LEVEL -le 1 ] && echo "$content" >>$LOG_FILE && echo -e "\033[0m" "${content}" "\033[0m"
}

# green for info
function log_info() {
    local content
    content="[INFO] $(date '+%Y-%m-%d %H:%M:%S') $*"
    [ $LOG_LEVEL -le 2 ] && echo "$content" >>$LOG_FILE && echo -e "\033[32m" "${content}" "\033[0m"
}

# yellow for warn
function log_warn() {
    local content
    content="[WARN] $(date '+%Y-%m-%d %H:%M:%S') $*"
    [ $LOG_LEVEL -le 3 ] && echo "$content" >>$LOG_FILE && echo -e "\033[33m" "${content}" "\033[0m"
}

# red for error
function log_err() {
    local content
    content="[ERROR] $(date '+%Y-%m-%d %H:%M:%S') $*"
    [ $LOG_LEVEL -le 4 ] && echo "$content" >>$LOG_FILE && echo -e "\033[31m" "${content}" "\033[0m"
}

# green for always
function log_always() {
    local content
    content="[ALWAYS] $(date '+%Y-%m-%d %H:%M:%S') $*"
    [ $LOG_LEVEL -le 5 ] && echo "$content" >>$LOG_FILE && echo -e "\033[32m" "${content}" "\033[0m"
}
