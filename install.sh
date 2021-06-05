#!/bin/bash

echo "Select the cetati conky theme"
echo "1.Cetati Tempesta"
echo "2.Cetati IBM"
read theme
if [[ $theme == "1" ]] ; then theme="tempesta" ; unselected="IBM" ; else theme="IBM" ; unselected="tempesta" ; fi

[ ! -d ~/.fonts ] && mkdir ~/.fonts/
mkdir -p ~/.conky/cetati_conky

cp fonts/*.ttf ~/.fonts/  
cp cetati_$theme ~/.conky/cetati_conky/
cp -r script ~/.conky/cetati_conky/ 
touch ~/.conky/cetati_conky/script/weather.json
cp -r icons ~/.conky/cetati_conky/
rm ~/.conky/cetati_conky/script/cetati_$unselected* 
cd ~/.conky/cetati_conky/
cat << EOF > ./cetati_run.sh

#!/bin/bash
killall conky
sleep 10
cd ~/.conky/cetati_conky/
conky -c cetati_$theme

EOF
chmod +x ./cetati_run.sh
conky -c cetati_$theme 
