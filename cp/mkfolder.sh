# echo "path: "
# read p
# echo $p
# cd $p
# pwd
echo "how many practice: "
read s
checkFolder() {
	dir=$1
	# echo $dir
	
	echo "$p/$dir"
if [ -d "$p/$dir" ]; then
   return 1
   else 
   return 0
fi

}


for ((i=0;i<s;++i)); 
do
	# echo "$s $i"
	folder=$((800+$i*100))
	checkFolder $folder
	ret=$?
	echo $ret
	# if [ $ret == 1 ];
	# then
	# 	echo "$folder acha.."
	# else 
	# 	mkdir $folder
	# 	echo "$folder made"
	# fi
	
done

cd "800" 
code .
