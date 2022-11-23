# traceroute output example
# echo www.google.com >> tr_logs.txt
# traceroute www.google.com >> tr_logs.txt

# Mapping of IP to Domain
one="www.ford.com: 23.61.127.8" # Ford
two="www.google.com: 142.250.191.174" # Google
three="www.amazon.com: 18.160.199.67" # Amazon
four="www.ford.com.cn: 40.73.122.39" # Ford China
five="www.imma.ie: 172.67.164.21" # Irish Art Museum
six="nemox.net: 83.137.41.11" #Austria
seven="registro.br: 200.160.2.3" # Brazil
eight="network-tools.com: 141.193.213.11" # Canada
nine="www.channelstv.com: 172.67.71.240" # Nigeria
ten="www.newsnow.co.uk: 213.146.191.132"

# Array of IP Addresses
arr=("www.ford.com")

# Date
today=`date +%m-%d-%Y`

# Loop to Run Trace Route
for element in "${arr[@]}";
do
    echo ${arr[@]} >> tr_logs_$today.txt
    traceroute ${arr[@]} >> tr_logs_$today.txt
    echo "FINISHED RUN \n" >> tr_logs_$today.txt
done

exit 0