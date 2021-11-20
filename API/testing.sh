#!/usr/bin/env bash

#function USE() {
#	echo $1 $2 $(basename $BASH_SOURCE) ${FUNCNAME[0]}
#}

function LOG_EVENT_TEST() {
	local test=""
	test="$test $($@)"

	echo $test
}
