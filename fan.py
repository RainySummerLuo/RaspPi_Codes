import gpiozero

RELAY_PIN = 7

fan = gpiozero.OutputDevice(RELAY_PIN, active_high=False, initial_value=False)
led = FAN(7)

if __name__ == "__main__":
    if fan.value:
        print("Switching Fan: OFF")
        fan.off()
    else:
        print("Switching Fan: ON")
        fan.on()