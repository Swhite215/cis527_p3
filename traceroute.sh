# traceroute output example
# echo www.google.com >> tr_logs.txt
# traceroute www.google.com >> tr_logs.txt

# Mapping of IP to Domain
one="www.ford.com: 23.61.127.8"

# Array of IP Addresses
arr=("www.ford.com")

# Loop to Run Trace Route
for element in "${arr[@]}";
do
    echo ${arr[@]} >> tr_logs.txt
    traceroute ${arr[@]} >> tr_logs.txt
    echo "FINISHED RUN \n" >> tr_logs.txt
done

exit 0