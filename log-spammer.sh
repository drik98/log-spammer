#!/bin/sh

start_time=$(date +%s)
counter=1

# How frequently a message should be logged in seconds (default every second)
log_frequency=${LOG_FREQUENCY:-1}

# How many messages should be logged initially (default 1000)
initial_log_count=${INITIAL_LOG_COUNT:-1000}

# Log the initial messages if specified
while [ $counter -le $initial_log_count ]; do
    timestamp=$(date +"%Y-%m-%d %H:%M:%S")
    current_time=$(date +%s)
    elapsed_time=$(( current_time - start_time ))

    echo "[$timestamp] Initial Log #$counter: Elapsed time: ${elapsed_time}s"
    
    counter=$(( counter + 1 ))
done

while true; do
    timestamp=$(date +"%Y-%m-%d %H:%M:%S")
    current_time=$(date +%s)
    elapsed_time=$(( current_time - start_time ))

    echo "[$timestamp] Log #$counter: Elapsed time: ${elapsed_time}s"
    
    counter=$(( counter + 1 ))
    sleep $log_frequency
done