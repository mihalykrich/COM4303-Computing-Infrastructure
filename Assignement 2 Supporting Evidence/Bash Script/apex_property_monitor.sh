#!/bin/bash

# Apex Property Services
# Automated Server and Service Monitoring
# Student ID: HE32067


# -----------------------------
# Main settings and variables
# -----------------------------

# Folder where the monitoring log will be stored
WORKDIR="$HOME/ops_67"

# Name and location of the log file
LOGFILE="$WORKDIR/opslog_0.txt"

# Service name and server IP addresses used for testing
DNS_NAME="www.apexproperty.local"
WEB_SERVER="10.67.0.131"
FTP_SERVER="10.67.0.132"

# Number of times the monitoring checks will run
CHECKS=10


# -----------------------------
# Create working directory
# -----------------------------

# Create the folder if it does not already exist
mkdir -p "$WORKDIR"


# -----------------------------
# Logging function
# -----------------------------

# Adds the current date and time to each message
# and saves the result to the log file
log_message() {
    # Store the message passed to the function in a local variable
    local message="$1"
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] $message" | tee -a "$LOGFILE"
}


# -----------------------------
# Host reachability function
# -----------------------------

# Sends one ping to the supplied IP address
# and returns whether the host responded
check_host() {
    local host="$1"

    if ping -c 1 -W 1 "$host" > /dev/null 2>&1
    then
        return 0
    else
        return 1
    fi
}


# -----------------------------
# Start of monitoring
# -----------------------------

# Record the main settings before the tests begin
log_message "=========================================="
log_message "Apex Property Services Monitoring Started"
log_message "Working directory: $WORKDIR"
log_message "Log file: $LOGFILE"
log_message "DNS name: $DNS_NAME"
log_message "Web/DNS server: $WEB_SERVER"
log_message "FTP server: $FTP_SERVER"
log_message "Number of checks: $CHECKS"
log_message "=========================================="


# -----------------------------
# Repeated monitoring loop
# -----------------------------

# Repeat all monitoring checks 10 times
for ((i=1; i<=CHECKS; i++))
do
    log_message "Check $i of $CHECKS started."


    # Check whether the local system can resolve the DNS name
    if dscacheutil -q host -a name "$DNS_NAME" | grep -q "ip_address"
    then
        log_message "DNS query successful for $DNS_NAME."
    else
        log_message "ERROR: DNS query failed for $DNS_NAME."
    fi


    # Check whether the Web/DNS server responds to ping
    if check_host "$WEB_SERVER"
    then
        log_message "Web/DNS server $WEB_SERVER is reachable."
    else
        log_message "ERROR: Web/DNS server $WEB_SERVER is unreachable."
    fi


    # Check whether the FTP server responds to ping
    if check_host "$FTP_SERVER"
    then
        log_message "FTP server $FTP_SERVER is reachable."
    else
        log_message "ERROR: FTP server $FTP_SERVER is unreachable."
    fi


    # Record the end of the current monitoring cycle
    log_message "Check $i completed."
    echo "------------------------------------------" | tee -a "$LOGFILE"

    # Wait two seconds before starting the next check
    sleep 2
done


# -----------------------------
# End of monitoring
# -----------------------------

# Final message showing that all checks have finished
log_message "Apex Property Services monitoring completed."