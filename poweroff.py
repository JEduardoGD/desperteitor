import RPi.GPIO as GPIO # Import Raspberry Pi GPIO library
import time
import os

GPIO.setwarnings(False) # Ignore warning for now
GPIO.setmode(GPIO.BOARD) # Use physical pin numbering
GPIO.setup(8, GPIO.IN, pull_up_down=GPIO.PUD_DOWN) # Set pin 10 to be an input pin and set initial value to be pulled low (off)

print('start')

while True: # Run forever
        if GPIO.input(8) == GPIO.HIGH:
                time.sleep(1)
                if GPIO.input(8) == GPIO.HIGH:
                        print('Button was pusshed!')
                        os.system("poweroff")
        time.sleep(1)

