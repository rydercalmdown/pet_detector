# Raspberry Pi Pet Detector
Detecting when your pet wants to go outside using machine learning and object recognition.


## Installation
First, clone this repository to your raspberry pi.

```
cd ~/
git clone https://github.com/rydercalmdown/pet_detector
```

Next, run the installation script.
```
cd pet_detector
make install
```

The script will set up base, and python dependencies.

Populate the config.py file with your required variables.

```
nano config.py
```

To configure the script to run automatically, add the following line to `/etc/rc.local` before the last line.

```bash
source /home/pi/pet_detector/env/bin/activate && python /home/pi/pet_detector/src/app.py
```
