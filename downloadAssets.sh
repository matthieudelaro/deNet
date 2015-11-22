#!/bin/bash

directory="data"
mkdir -p "$directory"
array=( "http://yann.lecun.com/exdb/mnist/train-images-idx3-ubyte.gz" "http://yann.lecun.com/exdb/mnist/train-labels-idx1-ubyte.gz" "http://yann.lecun.com/exdb/mnist/t10k-images-idx3-ubyte.gz" "http://yann.lecun.com/exdb/mnist/t10k-labels-idx1-ubyte.gz" )
for url in "${array[@]}"
do
   echo "Downloading file from $url:"
   wget --directory-prefix="$directory" "$url"
done

for file in `ls "$directory"`
do
    echo "Unzipping file $directory/$file"
    gzip -d "$directory/$file"
done
