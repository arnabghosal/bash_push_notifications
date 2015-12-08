#!/bin/bash
#Author  : Arnab Ghosal
#GIT URL : https://github.com/arnabghosal/bash_push_notifications
#Created : 28-Nov-2015
#Updated : 28-Nov-2015
#Version : 0.1.2

_ver=0.1.2

curl > /dev/null 2> /dev/null
if [[ $? -eq 127 ]]
then
	echo "ERROR: Curl not found. Please install curl"
	exit 99
fi

function err_msg
{
	echo "ERROR: Message not specified. Use -m or --msg and specify a value"
	exit 1
}

function err_title
{
	echo "ERROR: Title not specified. Use -t or --title and specify a value"
	exit 1
}

function err_user
{
	echo "ERROR: User Token not specified. Use -u or --user and specify a value"
	exit 1
}

function usage
{
	echo "Valid Arguments"
	echo "-h|--help  : Show help text"
	echo "-u|--user  : Set User Token"
	echo "-m|--msg   : Set Message"
	echo "-t|--title : Set Title"
	exit 1
}

function help
{
	echo "Bash Script to Send Pushbullet Notification"
	echo "Version - ${_ver}"
	usage
}

PB_URL="https://api.pushbullet.com/v2/pushes"
if [[ -f ~/.push.rc ]]
then
	source ~/.push.rc
fi

while :
do
	case "${1}" in
		-m|--msg)
			if [[ -n "${2}" ]]
			then
				PB_MSG="${2}"
				shift
			else
				err_msg
			fi	
		;;
		-t|--title)
			if [[ -n "${2}" ]]
			then
				PB_TTL="${2}"
				shift
			else
				err_title
			fi
		;;
		-u|--user)
			if [[ -n "${2}" ]]
			then
				PB_USR="${2}"
				shift
			else
				err_user
			fi
		;;
		-h|--help)
			help
		;;
		--ver)
			echo "Version - ${_ver}"
			exit 1
		;;
		--)
			break
		;;	
		-*)
			echo "Unknown option: ${1}"
			usage
		;;
		*)
			break
		;;
	esac
	shift
done

if [[ -z "${PB_MSG}" ]]
then
	err_msg
fi

if [[ -z "${PB_TTL}" ]]
then
	err_title
fi

json='{"type":"note","body":"'${PB_MSG}'","title":"'${PB_TTL}'"}'

curl -s --header "Access-Token: ${PB_USR}" --header "Content-Type: application/json" --data-binary "${json}" --request POST "${PB_URL}" > /dev/null

exit 0
