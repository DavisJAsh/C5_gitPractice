#!/bin/bash

#Writing a script to search for 404 errors, identify the IP addresses and provide the number of times the 404 repeast for each IP address.


grep " 404 " web-server-access-logs.log | awk -F'[, ]+' '{print "Error: 404 | IP Address:", $2}'

echo "Total 404 Errors: $total_count"
