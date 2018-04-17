#!/bin/bash
# Generate the i3 config file using the color argument

usage() { echo "Usage: $0 [-c <string>] [-f]" 1>&2; exit 1; }

while getopts ":c:f" o; do
	case "${o}" in
	c)
		c=${OPTARG}
		if [ -z ${c} ]; then
		usage	
		exit 1
		fi

		if [ ! -f ./color/${c} ]; then
		echo "Color ${c} not found!"
		exit 1
		fi
	;;
	f)
		f=true
	;;
	*)
		usage
	;;
	esac
done


# Use default scheme (if it exists)
if [ -z ${c} ] && [ -f ./color/default ] ; then
	c="default"
fi

# Check if config already exists
if [ -f ./config ]; then
	if [ f ]; then 
		echo Deleting previous config
		rm ./config
	else
		echo "Config already exists!"
		exit 1
	fi
fi

echo Using \"${c}\" color scheme

cat base ./color/${c} > ./config

i3-msg reload
