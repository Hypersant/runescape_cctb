#!/usr/bin/env bash

#####################################################
# SCRIPT AUTHOR: Muted
# SCRIPT PURPOSE: Support library
# CREATION DATE: 08/12/2020 22:01
# LAST EDIT DATE: 08/12/2020 22:30
#####################################################

###################################
# ITEM MENU MESSAGE Y POSITIONS
# (USE, DROP, EXAMINE, etc)
#######################
ITEM_MENU_Y_1=19
ITEM_MENU_HEIGHT_1=33

ITEM_MENU_Y_2=34
ITEM_MENU_HEIGHT_2=48

ITEM_MENU_Y_3=49
ITEM_MENU_HEIGHT_3=63

ITEM_MENU_Y_4=64
ITEM_MENU_HEIGHT_4=78

# Calculate on the fly (generic function) -- 15y difference per message
# $(($ITEM_MSG_Y + $(($ITEM_MSG_NEXT * $n))))