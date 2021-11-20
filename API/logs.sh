#!/usr/bin/env bash

#####################################################
# SCRIPT AUTHOR: Muted
# SCRIPT PURPOSE: Declare logging routines
# CREATION DATE: 08/15/2020 23:45
# LAST EDIT DATE: 08/15/2020 23:45
#####################################################

source "../$(dirname $0)/API/globals.sh"

function LOG_EVENT() {
	local LOG_EVENT_ID=$1
	local buffer=""

	# Log the file data
	if [ $3 -ne 0 ]; then
		buffer=$(LOG_FILE $1)
	fi

	case $LOG_EVENT_ID in
		1) buffer="${buffer}\n$(LOG_ITEM_USE $4 $5)\n";;
		2) buffer="${buffer}\n$(LOG_ITEM_USE $4 $5 $6 $7)\n";;
	esac

	echo -e "$buffer"
}

# Top level function for distributing chains of data
function LOG_ITEM_EVENTS() {
	local buffer=""

	# Log the file data
	if [ $3 -ne 0 ]; then
		buffer=$(LOG_FILE $1)
	fi

	case $GLOBAL_LOG_EVENT_ID in
		1) buffer="${buffer}\n$(LOG_ITEM_USE $4 $5)\n";;
		2) buffer="${buffer}\n$(LOG_ITEM_USE $4 $5 $6 $7)\n";;
	esac

	echo -e "$buffer"
}

# Generic function for logging file data (dir/path)
function LOG_FILE() {
	local buffer="${GLOBAL_TEXT_LOG_PATH_COL}PATH${Color_Off}: ${GLOBAL_TEXT_LOG_PWD_COL}$PWD${Color_Off}/${GLOBAL_TEXT_LOG_FILE_NAME_COL}$1${Color_Off}"
	echo -e "$buffer"
}

# Global function settings for "ITEM_USE"
function LOG_ITEM_USE() {
	case $GLOBAL_ITEM_LOG_USE in
		1) echo -e "$(LOG_EVENT $1 $2)";;
		2) echo -e "$(LOG_EVENT $1 $2 $3 $4)";;
	esac
}

function LOG_EVENT() {
	local buffer="[${GLOBAL_TEXT_EVENT_COL}EVENT${Color_Off} -> ${GLOBAL_TEXT_FUNC_NAME_COL}$1${Color_Off}] ${GLOBAL_TEXT_FUNC_CALLED_COL}$2${Color_Off}"

	if [ $# -eq 4 ]; then
		buffer="${buffer} [ ${GLOBAL_TEXT_EXTRA_ARG_1_COL}$3${Color_Off}, ${GLOBAL_TEXT_EXTRA_ARG_2_COL}$4${Color_Off} ]"
	fi

	echo -e "$buffer"
}