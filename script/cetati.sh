#!/bin/bash
#Author: Racherry & Kal
function weather {
########################################################
# CONFIGURATION
########################################################
# UNIT   = f for fahrenheit, c for celsius or k for kelvin   
# API_KEY = free register in https://openweathermap.org
#           and get your token
# CITY    = your city name(check for closest location)
# COUNTRY = your country abbreviation: IN, US, RU, BR etc..
########################################################

UNIT="c"
API_KEY="API KEY HERE"
CITY="YOUR CITY HERE"
COUNTRY="YOUR COUNTRY"

########################################################

CITY=$(echo $CITY | sed -e 's/ /%20/g')
if [ $UNIT == "c" ]
then
	UNIT="metric"
elif [ $UNIT == "f" ]
then
	UNIT="imperial"
else
	UNIT="default"
fi
verify=$(which curl 2> /dev/null)
if [ "$verify" == "" ]
then
	echo "Dependency not found! Please install curl library!"
	exit
fi
url="http://api.openweathermap.org/data/2.5/weather?q=$CITY,$COUNTRY&APPID=$API_KEY&units=$UNIT"
status=$(curl -I -s "$url" | head -1 | cut -d" " -f2)
if [ "$status" != "200" ]
then
	echo "Connection error, please check settings in weather.sh file"
	exit
fi
rm script/weather.json > /dev/null 2>&1
curl ${url} -s -o script/weather.json
cp ./icons/$(cat script/weather.json| jq -r '.weather[0].icon').png ./icons/temp.png 
}

function VBox {
disk=$(df -k / | awk 'FNR == 2 {print $2}'); dsize=$(du -sk ~/VirtualBox\ VMs | cut -f1); (echo "$dsize / $disk * 100") | bc -l | (xargs printf '%.*f\n' "$p")
}

function racherry {
disk=$(df -k / | awk 'FNR == 2 {print $2}'); dsize=$(du -sk ~ | cut -f1); (echo "$dsize / $disk * 100") | bc -l | (xargs printf '%.*f\n' "$p")
}

function Downloads {
disk=$(df -k / | awk 'FNR == 2 {print $2}'); dsize=$(du -sk ~/Downloads | cut -f1); (echo "$dsize / $disk * 100") | bc -l | (xargs printf '%.*f\n' "$p")
}

function Arsenal {
disk=$(df -k / | awk 'FNR == 2 {print $2}'); dsize=$(du -sk ~/Arsenal | cut -f1); (echo "$dsize / $disk * 100") | bc -l | (xargs printf '%.*f\n' "$p")
}

function slogans {
    shuf -e -n 1 "नास्ति बुद्धिमतां शत्रुः" "विद्या परमं बलम" "सक्ष्मात् सर्वेषों कार्यसिद्धिभर्वति" "न संसार भयं ज्ञानवताम्" "वृद्धसेवया विज्ञानत्" "सहायः समसुखदुःखः" "आपत्सु स्नेहसंयुक्तं मित्रम्" "मित्रसंग्रहेण बलं सम्पद्यते"
}

function wind {
degrees=$(cat script/weather.json | jq '.wind.deg') 
declare -a dirs
dirs=(N NNE NE ENE E ESE SE SSE S SSW SW WSW W WNW NW NNW N)
degrees=$(bc -l <<< "$degrees/22.5")
degrees=$(printf "%.*f\n" 0 $degrees)
degrees=$((degrees))
cp ./icons/${dirs[$degrees]}.png ./icons/windir.png
echo ${dirs[$degrees]} 
}

"$@"