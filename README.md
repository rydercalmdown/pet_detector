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

Next, download the pretrained model.
```
make download-model
```

## Running
Use this command to run the script:
```
make run
```

### Running on boot

To configure the script to run automatically, add the following line to `/etc/rc.local` before the last line.

```bash
source /home/pi/pet_detector/env/bin/activate && cd  /home/pi/pet_detector/src && python app.py
```
