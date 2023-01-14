#!/bin/bash


#1
echo "From which ip were the most requests? "
awk '{ print $1}' ./apache_logs | sort | uniq -c | sort -nr | head -1 | awk '{ print $2}'

#2 What is the most requested page?



#3
echo "How many requests were there from each ip?"
awk '{ print $1}' ./apache_logs | sort | uniq -c | sort -nr


#4

What non-existent pages were clients referred to?
grep "error404" apache_logs
