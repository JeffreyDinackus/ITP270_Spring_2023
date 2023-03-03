#~/bin/bash


isItRaining=$1

rainGreeting="GET A RAINCOAT"
sunGreeting="GET A SUN HAT"

if (($isItRaining == yes ))
then
    echo $rainGreeting
else
    echo $sunGreeting
fi

