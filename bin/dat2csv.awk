#! /bin/awk -f
# Transfer a space-separated file to comma-separated file
BEGIN {FS=" "; OFS=","}  # Begin section
{$1=$1; print $0} # $1=$1 is setting a field
END{}  # End section
