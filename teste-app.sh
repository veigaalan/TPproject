#/bin/bash
RESULT="`wget -qO- http://localhost:4200`"
wget -q localhost:4200
if [ $? -eq 0 ]
then
    echo 'Service fully working'
elif [[ $RESULT == *"Number"* ]]    
then
    echo 'View stats'
    echo $RESULT
else 
    echo 'Service not working'
    exit 1
fi 
#teste 7