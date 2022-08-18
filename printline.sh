#!/bin/bash
#program to print lines in a file
print_line()
{
echo "Corresponding line is:"
sed -n "${1}p" $filename
}

echo "Please enter the filename"
read filename
echo "enter the line numer to print"
read linenumber
print_line $linenumber

