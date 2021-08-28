#!/bin/sh

# Separator
Sep() {
	echo "  |  "
}

# Bar
Clock() {
	date '+%H:%M'
}

Date() {
	date '+%A %d, %B'
}

# private IP
Privip (){
	#ip addr show | grep wl | awk '/inet/ {print $2}'
	ip addr show | grep enp | awk '/inet/ {print $2}'
}

# Public IP
Pubip (){
	curl ifconfig.me 2>/dev/null
}

# Weather
Wttr (){
	curl "wttr.in/Algiers?format=+%C+%t"
}

# Output
while true; do
	echo "%{l} $(Privip)$(Sep)$(Pubip)%{r}$(Wttr)$(Sep)$(Date)$(Sep)$(Clock) "
	sleep 5s
done
