#!/usr/bin/env bash

#####################################################
# SCRIPT AUTHOR: Muted
# SCRIPT PURPOSE: Support library
# CREATION DATE: 08/12/2020 03:55
# LAST EDIT DATE: 08/13/2020 00:11
#####################################################

###################
# FILE INCLUDES
###########
source "../$(dirname $0)/API/globals.sh"

############
# USAGE:
# 	- Find the client window by name and force it into focus
# PARAMETERS IN:
# 	1. String of window title to be activated
# 	2. LOGGING FLAG: [0 (DEFAULT), 1, 2] -- 0: NO OUTPUT, 1: WINDOW ACTIVATION EVENTS, 2: WINDOW ACTIVATION EVENTS WITH NAMES
# 	3. LOGGING FLAG: [0 (DEFAULT), 1] -- 0: NO OUTPUT, 1: DISPLAYS FILE PATH
function ACTIVATE_WINDOW() {
	local windowTitle=$1

	local XDT_LOG_LEVEL=${2:-$GLOBAL_XDT_LOG_LEVEL}
	local DISPLAY_FILE_PATH=${3:-$GLOBAL_DISPLAY_FILE_PATH}

	if [ $DISPLAY_FILE_PATH -ne 0 ]; then
		echo -e "${IRed}PATH${Color_Off}: ${Cyan}$PWD${Color_Off}/${ICyan}$(basename $BASH_SOURCE)${Color_Off}"
	fi

	case $XDT_LOG_LEVEL in
		1) echo -e "[${ICyan}EVENT${Color_Off} * ${IRed}${FUNCNAME[0]}${Color_Off}] ${IBlue}windowactivate${Color_Off}";;
		2) echo -e "[${ICyan}EVENT${Color_Off} * ${IRed}${FUNCNAME[0]}${Color_Off}] ${IBlue}windowactivate${Color_Off} [ ${IGreen}$windowTitle${Color_Off} ]";;
	esac

	xdotool windowactivate --sync $(xdotool search --sync --onlyvisible --name $windowTitle)
}

############
# USAGE:
# 	- Move the mouse cursor on the screen
# PARAMETERS IN:
# 	1. X coordinate to move to (defaults to 0)
# 	2. Y coordinate to move to (defaults to 0)
# 	3. LOGGING FLAG: [0 (DEFAULT), 1, 2] -- 0: NO OUTPUT, 1: MOUSE MOVE EVENTS, 2: MOUSE MOVE EVENTS WITH COORDINATES
# 	4. LOGGING FLAG: [0 (DEFAULT), 1] -- 0: NO OUTPUT, 1: DISPLAYS FILE PATH
function MOUSE_MOVE() {
	local X=${1:-0}
	local Y=${2:-0}

	local XDT_LOG_LEVEL=${3:-$GLOBAL_XDT_LOG_LEVEL}
	local DISPLAY_FILE_PATH=${4:-$GLOBAL_DISPLAY_FILE_PATH}

	if [ $DISPLAY_FILE_PATH -ne 0 ]; then
		echo -e "${IRed}PATH${Color_Off}: ${Cyan}$PWD${Color_Off}/${ICyan}$(basename $BASH_SOURCE)${Color_Off}"
	fi

	case $XDT_LOG_LEVEL in
		1) echo -e "[${ICyan}EVENT${Color_Off} * ${IRed}${FUNCNAME[0]}${Color_Off}] ${IBlue}mousemove${Color_Off}";;
		2) echo -e "[${ICyan}EVENT${Color_Off} * ${IRed}${FUNCNAME[0]}${Color_Off}] ${IBlue}mousemove${Color_Off} [ ${IGreen}$mousePosX${Color_Off}, ${IGreen}$mousePosY${Color_Off} ]";;
	esac

	xdotool getactivewindow mousemove --window %1 $X, $Y
}

############
# USAGE:
# 	- Clicks the mouse button
# PARAMETERS IN:
# 	1. Mouse button [1 (DEFAULT), 2, 3] -- 1: Left mouse button, 2: Middle mouse button, 3: Right mouse button
# 	2. LOGGING FLAG: [0 (DEFAULT), 1, 2] -- 0: NO OUTPUT, 1: MOUSE CLICK EVENTS, 2: MOUSE CLICK EVENTS WITH COORDINATES
# 	3. LOGGING FLAG: [0 (DEFAULT), 1] -- 0: NO OUTPUT, 1: DISPLAYS FILE PATH
function MOUSE_CLICK() {
	local mouseButton=${1:-$GLOBAL_MOUSE_BUTTON_DEFAULT}

	local XDT_LOG_LEVEL=${2:-$GLOBAL_XDT_LOG_LEVEL}
	local DISPLAY_FILE_PATH=${3:-$GLOBAL_DISPLAY_FILE_PATH}

	if [ $DISPLAY_FILE_PATH -ne 0 ]; then
		echo -e "${IRed}PATH${Color_Off}: ${Cyan}$PWD${Color_Off}/${ICyan}$(basename $BASH_SOURCE)${Color_Off}"
	fi

	case $XDT_LOG_LEVEL in
		1) echo -e "[${ICyan}EVENT${Color_Off} * ${IRed}${FUNCNAME[0]}${Color_Off}] ${IBlue}click${Color_Off}";;
		2) echo -e "[${ICyan}EVENT${Color_Off} * ${IRed}${FUNCNAME[0]}${Color_Off}] ${IBlue}click${Color_Off} [ ${IGreen}$mousePosX${Color_Off}, ${IGreen}$mousePosY${Color_Off} ]";;
	esac

	xdotool getactivewindow mousemove --window %1 $mousePosX, $mousePosY click $mouseButton
}