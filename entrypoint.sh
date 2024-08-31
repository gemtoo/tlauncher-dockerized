#!/bin/bash
# This is a wrapper script. Only way to make sure that Minecraft is still running is by polling the 'java' process. If it exists, then Minecraft is running. Otherwise the container should exit.

info() {
	echo "[ $(date) ] $@"
}

die() {
	info "$@"
	exit 0
}

java -jar launcher.jar

while true; do
	pgrep java &> /dev/null || die "Java has been terminated, exiting."
	info "Sleeping 1 second, then checking Java again."
	sleep 1
done
