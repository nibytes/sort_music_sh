#!/bin/bash
FILES=$PWD/*mp3

for f in $FILES
do
  echo "Processing $f file..."
  filename="${f##*/}"
  echo $filename
mv -- "${f}" "${f%/*}/${filename// /_}"
		filename=`echo ${filename// /_}`

  artist=`echo $filename |cut -f1 -d "-" | cut -f1 -d "_"`
echo $artist
	i="$PWD/$artist"
		


  if ! [ -d "$i" ]
	then
       		mkdir $artist
	     mv $filename $i
	else
       	
         mv $filename $i	 
  fi

  
done
read
