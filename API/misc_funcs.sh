#!/usr/bin/env bash

#####################################################
# SCRIPT AUTHOR: Muted
# SCRIPT PURPOSE: Support library
# CREATION DATE: 08/12/2020 03:59
# LAST EDIT DATE: 08/12/2020 04:01
#####################################################

# Return a random integer within the ranges from MIN to MAX
function getRandomRange() {
	local min=$1
	local max=$2
	local newMax=$(($max - $min))

	# Return a random integer to the caller
	echo "$((min + RANDOM % newMax))"
}

function getBoxArea() {
	# Left side of wall
	local X=$1

	# Top side of wall
	local Y=$2

	# Right side of wall
	local width=$3

	# Bottom side of wall
	local height=$4

	# Return data to caller; caller must use: eval $(getBoxArea 0 0 0 0)
	echo "X=$X; Y=$Y; width=$width; height=$height"
}