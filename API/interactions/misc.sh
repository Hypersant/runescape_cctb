#!/usr/bin/env bash

#####################################################
# SCRIPT AUTHOR: Muted
# SCRIPT PURPOSE: Support library
# CREATION DATE: 08/12/2020 21:22
# LAST EDIT DATE: 08/12/2020 22:44
#####################################################

# PARAMETERS: $1 = Row, $2 = Column
# RETURN: Item slot dimensions [X, Y] and [WIDTH, HEIGHT]
function getItemBox() {
	# Left side of wall
	item_X=$((550 + ($1 * 42)))

	# Right side of wall
	item_width=$(($item_X + 31))

	# Top side of wall
	item_Y=$((162 + ($2 * 36)))

	# Bottom side of wall
	item_height=$(($item_Y + 31))

	# Return box dimensions to caller
	echo "AABB_X=$item_X; AABB_Y=$item_Y; AABB_width=$item_width; AABB_height=$item_height"
}

# PARAMETERS: $1 = Inventory slot number (1-28)
# RETURN: X, Y
function selectSlot_internal() {
	slot=$1
	row=0
	col=1

	# Iterates in reverse
	while [ $slot -ne 0 ]; do

		# Increment the column (every "5th" row is a "new column")
		if [ $row -eq 4 ]; then
			row=0
			col=$(($col + 1))
		fi

		slot=$(($slot - 1))
		row=$(($row + 1))
	done

	eval $(getItemBox $row $col)
}

# Random plot from any pixel from slot X (previously selected) :)
function selectSlot() {
	selectSlot_internal $1

	mousePosX=$(getRandomRange $AABB_X $AABB_width)
	mousePosY=$(getRandomRange $AABB_Y $AABB_height)

	# Right click on the slot
	MOUSE_CLICK $RBUTTON
}