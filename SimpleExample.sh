#!/bin/bash

# Check if R is installed
if ! command -v R &> /dev/null; then
    echo "R is not installed. Please install R before running this script."
    exit 1
fi

# Define the path to your R script
R_SCRIPT="//mnt/nfs/clasnetappvm/homedirs/annette/SimpleExample.R"

# Check if the R script file exists
if [ ! -f "$R_SCRIPT" ]; then
    echo "R script not found: $R_SCRIPT"
    exit 1
fi

# Run the R script
Rscript "$R_SCRIPT"
