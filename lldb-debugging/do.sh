black=`tput setaf 0`
red=`tput setaf 1`
green=`tput setaf 2`
yellow=`tput setaf 3`
blue=`tput setaf 4`
magenta=`tput setaf 5`
cyan=`tput setaf 6`
white=`tput setaf 7`
reset=`tput sgr0`

clang++-12+ sample.cpp -o debug-proc

./debug-proc > /dev/null & disown

ps -e | grep debug-proc


echo " ${red}dummy process for debugging set ${reset}\n"
echo " ${red}setting up lldb server . .  ${reset}\n"

cat debug-server.sh
sh debug-server.sh

#echo "${cyan} killing the dummy process ${reset}\n"
#pkill debug-proc
#echo "${cyan} dummy process killed ${reset}\n"
