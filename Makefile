RASPBERRY_PI_IP=10.0.0.89
RASPBERRY_PI_USERNAME=pi

.PHONY: install
install:
	@cd deployment && bash install_raspberry_pi.sh

.PHONY: run
run:
	@. env/bin/activate && cd src && python app.py

.PHONY: copy
copy:
	@echo "Copying to raspberry pi"
	rsync -r $(shell pwd) --exclude env --exclude data $(RASPBERRY_PI_USERNAME)@$(RASPBERRY_PI_IP):/home/$(RASPBERRY_PI_USERNAME)

.PHONY: focus
focus:
	@echo "Taking camera photo for focus"
	@ssh $(RASPBERRY_PI_USERNAME)@$(RASPBERRY_PI_IP) raspistill -o /home/pi/pet_detector/focus.jpg
	@scp $(RASPBERRY_PI_USERNAME)@$(RASPBERRY_PI_IP):/home/pi/pet_detector/focus.jpg ./focus.jpg

.PHONY: shell
shell:
	@echo "Connecting to raspberry pi"
	@ssh $(RASPBERRY_PI_USERNAME)@$(RASPBERRY_PI_IP)
