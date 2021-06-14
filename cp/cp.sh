#!/usr/bin/env bash
#!/bin/bash

file1="C:/Usersrwk/Desktop/dev/bash/cp/output.txt"
file2="C:/Usersrwk/Desktop/dev/bash/cp/expected.txt"


# @(#) s1       Demonstrate rudimentary diff using shell only.

# Infrastructure details, environment, debug commands for forum posts.
# Uncomment export command to run as external user: not context, pass-fail.
# export PATH="/usr/local/bin:/usr/bin:/bin"
set +o nounset
LC_ALL=C ; LANG=C ; export LC_ALL LANG
pe() { for _i;do printf "%s" "$_i";done; printf "\n"; }
pl() { pe;pe "-----" ;pe "$*"; }
db() { ( printf " db, ";for _i;do printf "%s" "$_i";done;printf "\n" ) >&2 ; }
db() { : ; }
C=$HOME/bin/context && [ -f "$C" ] && $C
set -o nounset

FILE1=${1-data1}
shift
FILE2=${1-data2}

# Display samples of data files.
pl " Data files:"
head "$FILE1" "$FILE2"

# Set file descriptors.
exec 3<"$FILE1"
exec 4<"$FILE2"

# Code based on:
# http://www.linuxjournal.com/content/reading-multiple-files-bash

# Section 2, solution.
pl " Results:"

eof1=0
eof2=0
count1=0
count2=0
while [[ $eof1 -eq 0 || $eof2 -eq 0 ]]
do
  if read a <&3; then
    let count1++
    # printf "%s, line %d: %s\n" $FILE1 $count1 "$a"
  else
    eof1=1
  fi
  if read b <&4; then
    let count2++
    # printf "%s, line %d: %s\n" $FILE2 $count2 "$b"
  else
    eof2=1
  fi
  if [ "$a" != "$b" ]
  then
    echo " File $FILE1 and $FILE2 differ at lines $count1, $count2:"
    pe "$a"
    pe "$b"
    # exit 1
  fi
done

exit 0


# file2="/home/vekomy/santhosh/bigfile2.txt"

# if cmp -s "$file1" "$file2"; then
#     printf 'The file "%s" is the same as "%s"\n' "$file1" "$file2"
# else
#     printf 'The file "%s" is different from "%s"\n' "$file1" "$file2"
# fi



# filelist1="/home/vekomy/santhosh/bigfiles.txt"
# filelist2="/home/vekomy/santhosh/bigfile2.txt"
# filelist1=file1
# filelist2=file2
# mapfile -t files1 <"$filelist1"

# while IFS= read -r file2; do
#     for file1 in "${files1[@]}"; do
#         if cmp -s "$file1" "$file2"; then
#             printf 'The file "%s" is the same as "%s"\n' "$file1" "$file2"
#         fi
#     done
# done <"$filelist2" | tee file-comparison.out