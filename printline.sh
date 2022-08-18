#!/bin/bash
#program to print lines in a file
print_line()
{
	
	if [ ! -f $filename ];then
		echo "File not found"
		exit
	fi
	linecount=$( sed -n "$=" $filename )
	if [ ${1} -gt $linecount ];then
		echo "Numer exceeds actual line count"
	else
		echo "Corresponding line is:"
		sed -n "${1}p" $filename
	fi

}

echo "Please enter the filename"
read filename
echo "enter the line numer to print"
read linenumber
print_line $linenumber

