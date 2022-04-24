#!/bin/sh
if [ -z ${SCRIPTPATH+x} ]; then
  SCRIPTPATH="$(cd "$(dirname "$0")" ; pwd -P)"
fi

# get the current uptime of the system
uptime=$(uptime -p | sed -e 's/up //g')

# define the common rofi menu command
# location 5 is southeast theme is menu and set dmenu
rofi_menu="rofi -location 5 -theme $SCRIPTPATH/rofi-menu.rasi -dmenu"

# initialize power menu option variables
shutdown=" Shutdown"
reboot=" Restart"
lock=" Lock"
options="$lock\n$reboot\n$shutdown"

# initailize confirmation variables and create function for running confirmation menu
confirm_yes="Yes"
confirm_no="No"
confirm_exit() {
    echo -e "$confirm_yes\n$confirm_no" | $rofi_menu -p "Are You Sure? (y/n)" -selected-row 1
}

# show the rofi powermenu and use the result to decide what to do next
chosen="$(echo -e "$options" | $rofi_menu -p "Uptime: $uptime" -selected-row 0)"
case $chosen in
    $shutdown)
        ans=$(confirm_exit &)
        if [[ $ans == $confirm_ans ]]; then
            loginctl poweroff
        else
            exit 0
        fi
        ;;
    $reboot)
        echo "reboot"
        ans=$(confirm_exit &)
        if [[ $ans == $confirm_yes ]]; then
            loginctl reboot
        else
            exit 0
        fi
        ;;
    $lock)
        echo "lock"
        ans=$(confirm_exit &)
        if [[ $ans == $confirm_yes ]]; then
            loginctl lock-sessions
        else
            exit 0
        fi
        ;;
    *)
        exit 0
        ;;
esac
