# traceroute output example
# echo www.google.com >> tr_logs.txt
# traceroute www.google.com >> tr_logs.txt

# Mapping of IP to Domain
one="23.61.127.8" # Ford : www.ford.com
two="142.250.191.174" # Google : www.google.com
three="18.160.199.67" # Amazon : www.amazon.com
four="40.73.122.39" # Ford China : www.ford.com.cn
five="172.67.164.21" # Irish Art Museum : www.imma.ie
six="83.137.41.11" #Austria : www.nemox.net
seven="200.160.2.3" # Brazil : registro.br
eight="141.193.213.11" # Canada : www.network-tools.com
nine="23.221.67.224" # Oracle US: www.oracle.com
ten="23.203.53.155" # Playstation JP: www.playstation.jp

# Array of IP Addresses
arr=("23.61.127.8" "142.250.191.174" "18.160.199.67" "40.73.122.39" "172.67.164.21" "83.137.41.11" "200.160.2.3" "141.193.213.11" "23.221.67.224" "23.203.53.155")


# Date
today=`date +%m-%d-%Y`

# Loop to Run Trace Route
for element in "${arr[@]}";
do
    echo $element >> ping_logs_$today.txt
    ping -c 120 $element >> ping_logs_$today.txt
    echo " " >> tr_logs_$today.txt
done

exit 0