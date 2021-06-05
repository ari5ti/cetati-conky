# cetati-conky

This is our Debian linux conky configuration with conky, lua and shell.     

The above conky's configuration files follow the LUA syntax as mentioned on the conky website for version 1.10 and later versions.

Conky's were first tested and made on Debian Buster.

# Features
- Weather
  - Current Temperature (Real and Feels Like) 
  - Minimum Temp, Maximum Temp, Humidity, Pressure.
  - Wind (Speed, Direction From and To) 
  - Current Weather
- Stats
  - CPU (top 3 cpu processes, Quad core usage, CPU Temperature, CPU Clock Rate )
  - Hard Disk ( Disk Usage of 4 custom selected folders/ directories)
  - Time ( Current Day & Time )
  - Memory ( top 3 memory usages, SWAP and RAM usage) 
  - Internet ( Wifi SSID, Upload and Download Speed & Data, Local and Public IP)
  - Battery ( Internal and External )
  - Logo      
- System Information
  - Displays Logo as per OS Distribution
  - OS Distribution, Kernel, System Uptime, Power status and User with hostname.  
- Sanskrit Slogan
  - Displays 8 slogans randomly every 30 seconds (Easily customisable).
  
# Installation of cetati conky

- Dependencies
  - git
  - bc
  - jq
  - conky-all
  - curl

System Command

    sudo apt update && sudo apt install -y git bc jq conky-all curl

# Clone the repository
    
    git clone https://github.com/ari5ti/cetati-conky
    cd cetati-conky 
    ./install.sh
    
Choose theme: IBM or Tempesta
   This will install and run the selected theme 
   
Autorun on system startups
  - once installed is completed, goto ~/.conky/cetati_conky/  and add conky_run.sh to session and startup 
  - For XFCE, 
      Settings --> Session and Startups --> Application Autostart --> Add --> `Name : cetati conky`, `command: ~/.conky/cetati_conky/conky_run.sh` --> OK

Notes `If you need only 1 specific theme, download cetati_conky_tempesta.tar.gz or cetati_conky_IBM.tar.gz`

# Screenshots

### CETATI Tempesta

![Cetati Tempesta theme image](/screenshots/cetati_tempesta_full.png) ![Cetati Tempesta theme image](/screenshots/cetati_tempesta_close.png)


### CETATI IBM

![Cetati IBM theme image](/screenshots/CETATI_IBM.png)![Cetati IBM theme image](/screenshots/CETATI_IBM_half.png)

Reference
- [Concept](https://www.deviantart.com/speedracker/art/Red-NSA-Conky-388553986)
- [Wind Direction Icons](https://github.com/renyhp/conky-config) 
- [Weather Icons](https://github.com/sstojkovic/eleg-weather-conky)
