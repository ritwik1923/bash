
echo "how many practice: "
read s
echo "Starting index: "
read start
date=$(date '+%d-%m-%Y')
echo $date
mkdir $date
cd $date

checkFolder() {
	dir=$1
	# echo $dir
	
	echo "$dir"
if [ -d "$dir" ]; then
   return 1
   else 
   return 0
fi

}


for ((i=0;i<s;++i)); 
do
	# echo "$s $i"
	folder=$(($start+$i*100))
	checkFolder $folder
	ret=$?
	echo $ret
	if [ $ret == 1 ];
	then
		echo "$folder acha.."
	else 
		mkdir $folder
		touch ${folder/input.txt}
		echo "$folder made"
	fi
	
done

# echo "entering $start"  
while [ true ]
do
   echo "Enter folder in $date ('e' to exit)"
   read folder
   if [ "$folder" = 'e' ]
   then 
   echo "Exiting kaka!!.. :P"
    break
   else
        echo "Entering $folder"
		cd $folder
		code .
   fi

done

# start .
# open $start

# remove after testing
# rmdir $date