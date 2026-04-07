#For loop over list
for SERVER in web01 web02 web03;do
echo "Checking:$SERVER"
ssh $SERVER"uptime"
done
while loop
COUNT==0
While[$COUNT-it 5 ];do
echo"count:$COUNT"
