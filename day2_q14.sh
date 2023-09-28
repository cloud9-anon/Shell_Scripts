!/bin/bash

# Accept a string from the user
read -p "Enter the string to exclude: " exclude_string

# Input file name
read -p "Enter the input file name: " input_file

# Output file name
read -p "Enter the output file name: " output_file

# Copy contents to another file excluding the specified string
grep -v "$exclude_string" "$input_file" > "$output_file"

# Display number of characters, lines, and words in the output file
char_count=$(wc -m < "$output_file")
line_count=$(wc -l < "$output_file")
word_count=$(wc -w < "$output_file")

echo -e "\nNumber of characters: $char_count"
echo "Number of lines: $line_count"
echo "Number of words: $word_count"

echo "Contents copied to $output_file excluding the string: '$exclude_string'"
