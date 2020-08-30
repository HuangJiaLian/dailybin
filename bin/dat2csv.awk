#! /bin/awk -f
# Transfer a space-separated file to comma-separated file
BEGIN {FS=" "}  # Begin section
{print $1, ",", $2}        # Loop section
END{}     # End section
