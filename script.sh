#!/usr/bin/zsh

# Run this script using `bash script.sh` to see output:

printf '\nStep 1 ----------\n\n'

# Print the file to the terminal:
cat data.txt

printf '\n'
printf '\nStep 2 ----------\n\n'

# Print out only field 2 using pipe operator:
cat data.txt | cut -f 2

printf '\nStep 3 ----------\n\n'

# Consolidate and combine unique values that are next to each other, which
# helps to reduce the dataset, but doesn't combine all unique values
cat data.txt | cut -f 2 | uniq -c

printf '\nStep 4 ----------\n\n'

# Sorting the dataset will group the results into contiguous unique values
cat data.txt | cut -f 2 | sort

printf '\nStep 5 ----------\n\n'

# Reduce the data down to a set of unique values with counts by initially
# sorting then consolidating:
cat data.txt | cut -f 2 | sort | uniq -c

printf '\nStep 6 ----------\n\n'

# Finally, sort the resulting dataset by the count column (k), numerically (n),
# and in reverse (r):
cat data.txt | cut -f 2 | sort | uniq -c | sort -k1,1nr