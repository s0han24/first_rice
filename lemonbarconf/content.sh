# !/bin/bash
format_date(){
    date "+%A %d/%m %T"
}

while true; do
    if [ $(cat /sys/class/power_supply/BAT0/capacity)>10 ]
    then
        echo "%{c}%{+o}$(format_date)%{-o}%{r}%{F#00FF00}$(cat /sys/class/power_supply/BAT0/status) %{F#FFFFFF}%{T1}$(cat /sys/class/power_supply/BAT0/capacity)%%"
    else
        echo "%{c}%{+o}$(format_date)%{-o}%{r}%{F#00FF00}$(cat /sys/class/power_supply/BAT0/status) %{F#FFFFFF}%{B#CD5C5C}%{T1}$(cat /sys/class/power_supply/BAT0/capacity)%%"
    fi  
    sleep 1
done