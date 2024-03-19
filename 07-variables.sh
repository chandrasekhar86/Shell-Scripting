#!bin/bash
echo please enter todays day
read today

if[ $today -eq Sunday ]
then
    echo "Today is Holiday
else
    echo "We have School Today"
fi
