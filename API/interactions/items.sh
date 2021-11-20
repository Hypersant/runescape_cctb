#!/usr/bin/env bash

#####################################################
# SCRIPT AUTHOR: Muted
# SCRIPT PURPOSE: Support library
# CREATION DATE: 08/12/2020 21:47
# LAST EDIT DATE: 08/13/2020 00:59
#####################################################

###################
# FILE INCLUDES
###########
source "../$(dirname $0)/API/globals.sh"
source "../$(dirname $0)/API/colors.sh"
source "../$(dirname $0)/API/defines.sh"
source "../$(dirname $0)/API/misc_funcs.sh"
source "../$(dirname $0)/API/XDT_wrapper.sh"

# TESTING
source "../$(dirname $0)/API/logs.sh"
_fileName=$(basename $BASH_SOURCE)

############
# USAGE:
# 	- Click on the "USE" option from the item option menu (TINDERBOXES ONLY?)
# PARAMETERS IN:
# 	1. RANDOM AABB COORDINATES FLAG: [0 (DEFAULT), 1] -- 0: Automatically generated randomized AABB coordinates used, 1: Manual coordinates used
# 	2. X coordinate to click on (defaults to 0)
# 	3. Y coordinate to click on (defaults to 0)
# 	4. LOGGING FLAG: [0 (DEFAULT), 1, 2] -- 0: NO OUTPUT, 1: MOUSE CLICK EVENTS, 2: MOUSE CLICK EVENTS WITH COORDINATES
# 	5. LOGGING FLAG: [0 (DEFAULT), 1] -- 0: NO OUTPUT, 1: DISPLAYS FILE PATH
function ITEM_USE() {
	local ITEM_RANDOM_AABB_COORD_GENERATION=${1:-$GLOBAL_ITEM_RANDOM_AABB_COORD_GENERATION}
	local X=${2:-0}
	local Y=${3:-0}

	# Log settings per-function
	local ITEM_LOG_LEVEL=${4:-$GLOBAL_ITEM_LOG_LEVEL}
	local DISPLAY_FILE_PATH=${5:-$GLOBAL_DISPLAY_FILE_PATH}

	if [ $ITEM_RANDOM_AABB_COORD_GENERATION -ne 0 ]; then
		mousePosX=$X
		mousePosY=$Y
	else
		mousePosX=$((mousePosX - $(getRandomRange 1 63) + $(getRandomRange 1 64)))
		mousePosY=$((mousePosY + $(getRandomRange $ITEM_MENU_Y_1 $ITEM_MENU_HEIGHT_1)))
	fi

	#LOG_EVENT $_fileName $EVENT_ID

	if [ $GLOBAL_ITEM_LOG_DISABLE -eq 0 ] && [ $GLOBAL_ITEM_LOG_USE -ne 0 ]; then
		LOG_ITEM_EVENTS $_fileName $ITEM_LOG_LEVEL $DISPLAY_FILE_PATH ${FUNCNAME[0]} "MOUSE_CLICK" $mousePosX $mousePosY
	fi

	#MOUSE_CLICK
}

############
# USAGE:
# 	- Click on the "DROP" option from the item option menu (TINDERBOXES ONLY?)
# PARAMETERS IN:
# 	1. RANDOM AABB COORDINATES FLAG: [0 (DEFAULT), 1] -- 0: Automatically generated randomized AABB coordinates used, 1: Manual coordinates used
# 	2. X coordinate to click on (defaults to 0)
# 	3. Y coordinate to click on (defaults to 0)
# 	4. LOGGING FLAG: [0 (DEFAULT), 1, 2] -- 0: NO OUTPUT, 1: MOUSE CLICK EVENTS, 2: MOUSE CLICK EVENTS WITH COORDINATES
# 	5. LOGGING FLAG: [0 (DEFAULT), 1] -- 0: NO OUTPUT, 1: DISPLAYS FILE PATH
function ITEM_DROP() {
	local ITEM_RANDOM_AABB_COORD_GENERATION=${1:-$GLOBAL_ITEM_RANDOM_AABB_COORD_GENERATION}
	local X=${2:-0}
	local Y=${3:-0}

	local ITEM_LOG_LEVEL=${4:-$GLOBAL_ITEM_LOG_LEVEL}
	local DISPLAY_FILE_PATH=${5:-$GLOBAL_DISPLAY_FILE_PATH}

	if [ $ITEM_RANDOM_AABB_COORD_GENERATION -ne 0 ]; then
		mousePosX=$X
		mousePosY=$Y
	else
		mousePosX=$((mousePosX - $(getRandomRange 1 63) + $(getRandomRange 1 64)))
		mousePosY=$((mousePosY + $(getRandomRange $ITEM_MENU_Y_2 $ITEM_MENU_HEIGHT_2)))
	fi

	if [ $GLOBAL_ITEM_LOG_DISABLE -eq 0 ]; then
		LOG_ITEM_EVENTS $_fileName $ITEM_LOG_LEVEL $DISPLAY_FILE_PATH ${FUNCNAME[0]} "MOUSE_CLICK" $mousePosX $mousePosY
	fi

	#MOUSE_CLICK
}

############
# USAGE:
# 	- Click on the "EXAMINE" option from the item option menu (TINDERBOXES ONLY?)
# PARAMETERS IN:
# 	1. RANDOM AABB COORDINATES FLAG: [0 (DEFAULT), 1] -- 0: Automatically generated randomized AABB coordinates used, 1: Manual coordinates used
# 	2. X coordinate to click on (defaults to 0)
# 	3. Y coordinate to click on (defaults to 0)
# 	4. LOGGING FLAG: [0 (DEFAULT), 1, 2] -- 0: NO OUTPUT, 1: MOUSE CLICK EVENTS, 2: MOUSE CLICK EVENTS WITH COORDINATES
# 	5. LOGGING FLAG: [0 (DEFAULT), 1] -- 0: NO OUTPUT, 1: DISPLAYS FILE PATH
function ITEM_EXAMINE() {
	local ITEM_RANDOM_AABB_COORD_GENERATION=${1:-$GLOBAL_ITEM_RANDOM_AABB_COORD_GENERATION}
	local X=${2:-0}
	local Y=${3:-0}

	local ITEM_LOG_LEVEL=${4:-$GLOBAL_ITEM_LOG_LEVEL}
	local DISPLAY_FILE_PATH=${5:-$GLOBAL_DISPLAY_FILE_PATH}

	if [ $ITEM_RANDOM_AABB_COORD_GENERATION -ne 0 ]; then
		mousePosX=$X
		mousePosY=$Y
	else
		mousePosX=$((mousePosX - $(getRandomRange 1 63) + $(getRandomRange 1 64)))
		mousePosY=$((mousePosY + $(getRandomRange $ITEM_MENU_Y_3 $ITEM_MENU_HEIGHT_3)))
	fi

	if [ $GLOBAL_ITEM_LOG_DISABLE -eq 0 ]; then
		LOG_ITEM_EVENTS $_fileName $ITEM_LOG_LEVEL $DISPLAY_FILE_PATH ${FUNCNAME[0]} "MOUSE_CLICK" $mousePosX $mousePosY
	fi

	#MOUSE_CLICK
}

############
# USAGE:
# 	- Click on the "CANCEL" option from the item option menu (TINDERBOXES ONLY?)
# PARAMETERS IN:
# 	1. RANDOM AABB COORDINATES FLAG: [0 (DEFAULT), 1] -- 0: Automatically generated randomized AABB coordinates used, 1: Manual coordinates used
# 	2. X coordinate to click on (defaults to 0)
# 	3. Y coordinate to click on (defaults to 0)
# 	4. LOGGING FLAG: [0 (DEFAULT), 1, 2] -- 0: NO OUTPUT, 1: MOUSE CLICK EVENTS, 2: MOUSE CLICK EVENTS WITH COORDINATES
# 	5. LOGGING FLAG: [0 (DEFAULT), 1] -- 0: NO OUTPUT, 1: DISPLAYS FILE PATH
function ITEM_CANCEL() {
	local ITEM_RANDOM_AABB_COORD_GENERATION=${1:-$GLOBAL_ITEM_RANDOM_AABB_COORD_GENERATION}
	local X=${2:-0}
	local Y=${3:-0}

	local ITEM_LOG_LEVEL=${4:-$GLOBAL_ITEM_LOG_LEVEL}
	local DISPLAY_FILE_PATH=${5:-$GLOBAL_DISPLAY_FILE_PATH}

	if [ $ITEM_RANDOM_AABB_COORD_GENERATION -ne 0 ]; then
		mousePosX=$X
		mousePosY=$Y
	else
		mousePosX=$((mousePosX - $(getRandomRange 1 63) + $(getRandomRange 1 64)))
		mousePosY=$((mousePosY + $(getRandomRange $ITEM_MENU_Y_4 $ITEM_MENU_HEIGHT_4)))
	fi

	if [ $GLOBAL_ITEM_LOG_DISABLE -eq 0 ]; then
		LOG_ITEM_EVENTS $_fileName $ITEM_LOG_LEVEL $DISPLAY_FILE_PATH ${FUNCNAME[0]} "MOUSE_CLICK" $mousePosX $mousePosY
	fi

	#MOUSE_CLICK
}

############
# USAGE:
# 	- Move the mouse far away enough to close the item option menu
# PARAMETERS IN:
# 	1. RANDOM AABB COORDINATES FLAG: [0 (DEFAULT), 1] -- 0: Automatically generated randomized AABB coordinates used, 1: Manual coordinates used
# 	2. X coordinate to click on (defaults to 0)
# 	3. Y coordinate to click on (defaults to 0)
# 	4. LOGGING FLAG: [0 (DEFAULT), 1, 2] -- 0: NO OUTPUT, 1: MOUSE MOVE EVENTS, 2: MOUSE MOVE EVENTS WITH COORDINATES
# 	5. LOGGING FLAG: [0 (DEFAULT), 1] -- 0: NO OUTPUT, 1: DISPLAYS FILE PATH
function ITEM_CANCEL_SELECTION() {
	local ITEM_RANDOM_AABB_COORD_GENERATION=${1:-$GLOBAL_ITEM_RANDOM_AABB_COORD_GENERATION}
	local X=${2:-0}
	local Y=${3:-0}

	local ITEM_LOG_LEVEL=${4:-$GLOBAL_ITEM_LOG_LEVEL}
	local DISPLAY_FILE_PATH=${5:-$GLOBAL_DISPLAY_FILE_PATH}

	if [ $ITEM_RANDOM_AABB_COORD_GENERATION -ne 0 ]; then
		mousePosX=$X
		mousePosY=$Y
	else
		result=$(getRandomRange 0 1)

		if [ $result -eq 1 ]; then
#			case $ITEM_LOG_LEVEL in
#				1) echo -e "[${ICyan}EVENT${Color_Off} * ${IRed}${FUNCNAME[0]}${Color_Off}] ${IBlue}MOUSE_MOVE${Color_Off}";;
#				2) echo -e "[${ICyan}EVENT${Color_Off} * ${IRed}${FUNCNAME[0]}${Color_Off}] ${IBlue}MOUSE_MOVE${Color_Off} [ ${IGreen}$mousePosX${Color_Off}, ${IGreen}$(($mousePosY + 93))${Color_Off} ]";;
#			esac

			if [ $GLOBAL_ITEM_LOG_DISABLE -eq 0 ]; then
				LOG_ITEM_EVENTS $_fileName $ITEM_LOG_LEVEL $DISPLAY_FILE_PATH ${FUNCNAME[0]} "MOUSE_MOVE" $mousePosX $mousePosY
			fi

			#MOUSE_MOVE $mousePosX, $mousePosY
		else
#			case $ITEM_LOG_LEVEL in
#				1) echo -e "[${ICyan}EVENT${Color_Off} * ${IRed}${FUNCNAME[0]}${Color_Off}] ${IBlue}MOUSE_MOVE${Color_Off}";;
#				2) echo -e "[${ICyan}EVENT${Color_Off} * ${IRed}${FUNCNAME[0]}${Color_Off}] ${IBlue}MOUSE_MOVE${Color_Off} [ ${IGreen}$(($mousePosX - 116))${Color_Off}, ${IGreen}$mousePosY${Color_Off} ]";;
#			esac

			if [ $GLOBAL_ITEM_LOG_DISABLE -eq 0 ]; then
				LOG_ITEM_EVENTS $_fileName $ITEM_LOG_LEVEL $DISPLAY_FILE_PATH ${FUNCNAME[0]} "MOUSE_MOVE" $mousePosX $mousePosY
			fi
		fi

		#MOUSE_MOVE $mousePosX, $mousePosY
	fi
}