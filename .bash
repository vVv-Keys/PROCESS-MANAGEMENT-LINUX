#!/bin/bash

# Function to display error message
display_error() {
    local message=$1
    echo "Error: $message" >&2
}

# Function to load configuration from file
load_configuration() {
    local config_file=$1
    if [[ ! -f $config_file ]]; then
        display_error "Configuration file not found: $config_file"
        exit 1
    fi
    source $config_file
}

# Function to check if process exists
process_exists() {
    local pid=$1
    if ! ps -p $pid > /dev/null; then
        display_error "Process with PID $pid not found."
        exit 1
    fi
}

# Function to list processes
list_processes() {
    echo "PID     Name"
    ps -e -o pid,comm --no-header | awk '{print $1"\t"$2}'
}

# Function to view process details
view_process_details() {
    local pid=$1
    echo "Process Details for PID $pid:"
    ps -p $pid -o pid,user,%cpu,%mem,comm --no-header
}

# Function to check process dependencies
check_process_dependencies() {
    local pid=$1
    local process_name=$(ps -p $pid -o comm=)
    local dependencies=("dependency1" "dependency2")  # Add your process dependencies here

    for dependency in "${dependencies[@]}"; do
        if ! pgrep -xq "$dependency"; then
            echo "Dependency $dependency for process $process_name is missing or not running."
        fi
    done
}

# Function to monitor process resources
monitor_process_resources() {
    local pid=$1
    local cpu_threshold=$2
    local mem_threshold=$3

    while true; do
        cpu_usage=$(ps -p $pid -o %cpu --no-header)
        mem_usage=$(ps -p $pid -o %mem --no-header)

        if (( $(echo "$cpu_usage > $cpu_threshold" | bc -l) )); then
            echo "CPU usage of process with PID $pid exceeds threshold ($cpu_usage%)"
            send_notification "CPU usage exceeds threshold"
        fi

        if (( $(echo "$mem_usage > $mem_threshold" | bc -l) )); then
            echo "Memory usage of process with PID $pid exceeds threshold ($mem_usage%)"
            send_notification "Memory usage exceeds threshold"
        fi

        log_resource_usage $pid $cpu_usage $mem_usage

        sleep 5  # Check every 5 seconds
    done
}

# Function to log resource usage
log_resource_usage() {
    local pid=$1
    local cpu_usage=$2
    local mem_usage=$3
    local log_file="resource_log_$pid.txt"
    local timestamp=$(date +"%Y-%m-%d %H:%M:%S")

    echo "$timestamp - CPU: $cpu_usage%, Memory: $mem_usage%" >> $log_file
}

# Function to restart process
restart_process() {
    local pid=$1
    local process_name=$(ps -p $pid -o comm=)
    kill -9 $pid
    echo "Process $process_name with PID $pid has been terminated."
    # Add your code here to restart the process
    # For demonstration, let's echo a message
    echo "Restarting $process_name..."
}

# Function to send notification
send_notification() {
    local message=$1
    echo "Sending notification: $message"
    # Add your code here to send a notification, such as email, SMS, etc.
    # For demonstration, let's echo a message
    echo "Notification: $message"
}

# Function to adjust process priority
adjust_process_priority() {
    local pid=$1
    local priority=$2
    renice $priority $pid
    echo "Priority of process with PID $pid has been adjusted to $priority"
}

# Function for interactive mode
interactive_mode() {
    echo "Entering interactive mode..."
    while true; do
        read -p "Enter action [list/details/monitor/log/dependencies/restart/priority/exit]: " action

        case $action in
            "list"|"details"|"monitor"|"log"|"dependencies"|"restart")
                read -p "Enter PID: " pid
                case $action in
                    "details")
                        view_process_details $pid
                        ;;
                    "monitor")
                        monitor_process_resources $pid 50 50  # CPU and memory thresholds (modify as needed)
                        ;;
                    "log")
                        log_process_activity $pid
                        ;;
                    "dependencies")
                        check_process_dependencies $pid
                        ;;
                    "restart")
                        restart_process $pid
                        ;;
                    *)
                        echo "Invalid action."
                        ;;
                esac
                ;;
            "priority")
                read -p "Enter PID: " pid
                read -p "Enter priority (-20 to 19): " priority
                adjust_process_priority $pid $priority
                ;;
            "exit")
                echo "Exiting interactive mode."
                break
                ;;
            *)
                echo "Invalid action."
                ;;
        esac
    done
}

# Main script starts here

# Load configuration from file
load_configuration "config.conf"

# Check command-line arguments
if [[ $# -lt 1 ]]; then
    interactive_mode
    exit 0
fi

# Process command-line arguments
action=$1
pid=$2

case $action in
    "list")
        list_processes
        ;;
    "details")
        if [[ -z $pid ]]; then
            display_error "Please provide PID for the action."
            exit 1
        fi
        view_process_details $pid
        ;;
    "dependencies")
        if [[ -z $pid ]]; then
            display_error "Please provide PID for the action."
            exit 1
        fi
        check_process_dependencies $pid
        ;;
    "monitor")
        if [[ -z $pid ]]; then
            display_error "Please provide PID for the action."
            exit 1
        fi
        monitor_process_resources $pid $CPU_THRESHOLD $MEM_THRESHOLD
        ;;
    "log")
        if [[ -z $pid ]]; then
            display_error "Please provide PID for the action."
            exit 1
        fi
        log_process_activity $pid
        ;;
    "restart")
        if [[ -z $pid ]]; then
            display_error "Please provide PID for the action."
            exit 1
        fi
        restart_process $pid
        ;;
    *)
        display_error "Invalid action. Usage: $0 <action> [pid]"
        display_error "Actions: list, details, monitor, log, dependencies, restart"
        exit 1
        ;;
esac
