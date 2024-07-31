#!/bin/bash

dir=$1
mkdir -p $dir
cd $dir

path=$(pwd)
touch main.cpp
mkdir -p build
cd build

cat << EOF > compile_commands.json
[{
	"directory": "$path/build",
	"command": "/sbin/c++  -isystem /usr/include/opencv4  -o CMakeFiles/main.dir/main.cpp.o -c $path/main.cpp",
	"file": "$path/main.cpp"
}]
EOF
