import gpiozero

RELAY_PIN = 4

fan = gpiozero.OutputDevice(RELAY_PIN, active_high=False, initial_value=False)

if fan.value:
    print("Switching Fan: OFF" + fan.value)
    fan.off()
else:
    print("Switching Fan: ON")
    fan.on()
