#!/usr/bin/env bash

#####################################################
# SCRIPT AUTHOR: Muted
# SCRIPT PURPOSE: Support library
# CREATION DATE: 08/12/2020 04:18
# LAST EDIT DATE: 08/13/2020 00:14
#####################################################

#############################
# INCLUDES
#####################
source "../$(dirname $0)/API/colors.sh"

#############################
# LOG TEXT COLOR SETTINGS
#####################

GLOBAL_TEXT_EVENT_COL=${ICyan}
GLOBAL_TEXT_FUNC_NAME_COL=${IRed}
GLOBAL_TEXT_FUNC_CALLED_COL=${IBlue}
GLOBAL_TEXT_EXTRA_ARG_1_COL=${IGreen}
GLOBAL_TEXT_EXTRA_ARG_2_COL=${IGreen}
GLOBAL_TEXT_LOG_PATH_COL=${IRed}
GLOBAL_TEXT_LOG_PWD_COL=${Cyan}
GLOBAL_TEXT_LOG_FILE_NAME_COL=${ICyan}

#############
# ALIASES
#####
LBUTTON=1
MBUTTON=2
RBUTTON=3

#######################
# MOUSE COORDINATES
###############
mousePosX=0
mousePosY=0

########################
# UNIVERSALLY GLOBAL
################
GLOBAL_DISPLAY_FILE_PATH=1
GLOBAL_MOUSE_BUTTON_DEFAULT=$LBUTTON

###################################
# FILE SETTINGS: XDT_wrapper.sh
###########################
GLOBAL_XDT_LOG_LEVEL=2

#############################
# FILE SETTINGS: items.sh
#####################

# Disables all item_XXX related logs
GLOBAL_ITEM_LOG_DISABLE=0

# ?????
GLOBAL_ITEM_LOG_LEVEL=0

# Function settings for "ITEM_XXX"
GLOBAL_ITEM_LOG_USE=0
GLOBAL_ITEM_LOG_DROP=2
GLOBAL_ITEM_LOG_EXAMINE=2
GLOBAL_ITEM_LOG_CANCEL=2

# EVENT IDS FOR LOGS ???
GLOBAL_LOG_EVENT_ID=0

# Global random axis-aligned bound-boxed coordinate generation setting
GLOBAL_ITEM_RANDOM_AABB_COORD_GENERATION=0