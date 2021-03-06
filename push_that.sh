#!/bin/bash

REPO='/home/ludovic/delivery/T-WEB-500-LYN-5-0-webpoold01-ludovic.rochur'
COMMIT_TIMESTAMP=`date +'%Y-%m-%d %H:%M:%S %Z'`
GIT=`which git`

if [ ! -d ${REPO}/.git ]; then
	echo "${REPO} is not a valid git repo! Aborting..."
	exit 0
else
	echo "${REPO} is a valid git repo! Proceeding..."
fi

cd ${REPO}
${GIT} add .
${GIT} commit -m "Auto commit on ${COMMIT_TIMESTAMP}"
${GIT} push
