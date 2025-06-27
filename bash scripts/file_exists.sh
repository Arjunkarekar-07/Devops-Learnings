#!/bin/bash
file=”example.txt”
# Check if the file exists
if [ -e “$file” ]; then
echo “File exists: $file”
else
echo “File not found: $file”
fi

#!/bin/bash

abcd=”Hello”
echo ‘$abcd’ # Output: $abcd
echo “$abcd” # Output: Hello


#!/bin/bash

fruits=(“apple” “banana” “cherry” “date”)
for fruit in “${fruits[@]}”; do
echo “Current fruit: $fruit”
done


#!/bin/bash

echo “Enter the word to search for:”
read target_word
echo “Enter the filename:”
read filename
count=$(grep -o -w “$target_word” “$filename” | wc -l)
echo “The word ‘$target_word’ appears $count times in ‘$filename’.” 


Standard Output (stdout): This is the default output stream where a command’s regular output goes. It’s displayed on the terminal by default. You can redirect it to a file using >.
Standard Error (stderr): This is the output stream for error messages and warnings. It’s displayed on the terminal by default as well. You can redirect it to a file using 2>.


#!/bin/bash
# Define a function to calculate factorial
calculate_factorial() {
num=$1
fact=1
for ((i=1; i<=num; i++)); do
fact=$((fact * i))
done
echo $fact
}
# Prompt the user to enter a number
echo “Enter a number: “
read input_num
# Call the calculate_factorial function with the input number
factorial_result=$(calculate_factorial $input_num)
# Display the factorial result
echo “Factorial of $input_num is: $factorial_result”

#!/bin/bash
cleanup() {
echo “Script interrupted. Performing cleanup…”
# Add your cleanup actions here
exit 1
}
# Set up a trap to call the cleanup function when Ctrl+C (SIGINT) is received
trap cleanup SIGINT
# Rest of your script
echo “Running…”
sleep 10
echo “Finished.


Create a script that checks for and removes duplicate lines in a text file.
Here is our linux scipt in which we will remove duplicate lines from a text file.

#!/bin/bash
input_file=”input.txt”
output_file=”output.txt”
sort “$input_file” | uniq > “$output_file”
echo “Duplicate lines removed successfully.”

#!/bin/bash
directory=”/path/to/your/directory”
total_size=$(du -csh “$directory” | grep total | awk ‘{print $1}’)
echo “Total size of files in $directory: $total_size”


#!/bin/bash
directory=”$1″
if [ -z “$directory” ]; then
echo “Usage: $0 <directory>”
exit 1
fi

if [ ! -d “$directory” ]; then
echo “Error: ‘$directory’ is not a valid directory.”
exit 1
fi
echo “Empty files in $directory:”
find “$directory” -type f -empty

#!/bin/bash
host=”$1″
if [ -z “$host” ]; then
echo “Usage: $0 <hostname or IP>”
exit 1
fi
ping -c 4 “$host”
 


Write a Shell Script to Find the Greatest Element in an Array:ls -
if [ $? -eq 0 ]; then
echo “$host is reachable.”
else
echo “$host is not reachable.”
fi

#!/bin/bash
# Declare an array
array=(3 56 24 89 67)

# Initialize a variable to store the maximum value, starting with the first element

max=${array[0]}

# Iterate through the array

for num in “${array[@]}”; do

# Compare each element with the current maximum

if ((num > max)); then
max=$num
fi
done

# Print the maximum value

echo “The maximum element in the array is: $max”