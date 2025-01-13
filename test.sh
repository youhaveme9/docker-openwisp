#!/bin/bash

while true; do
    # Run the Selenium test command
    python3 tests/runtests.py TestServices.test_topology_graph
    
    # Check the exit code of the command
    if [ $? -ne 0 ]; then
        # If the command returns a non-zero exit code, break the loop
        break
    fi
done

# Send the beep command
beep