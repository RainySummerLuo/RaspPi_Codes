# LoginNotice
Basing on codes in repo https://github.com/kuretru/Script-Collection. <br/>
Using [Server酱](http://sc.ftqq.com/3.version) to send msg to wechat when there's a bash login. 
## Usage:
```bash
mkdir ~/shell
cd ~/shell
wget https://raw.githubusercontent.com/RainySummerLuo/RaspPi_Codes/master/login_notice.sh
sudo nano login_notice.sh
chmod u+x login_notice.sh
echo ". ~/shell/login_notice.sh" >> ~/.bash_profile
```

# GPIO
Using [WiringPi](http://wiringpi.com/) for GPIO access. <br/>
[Pinout](https://pinout.xyz/pinout/wiringpi) is a helpful visual GPIO Pinout guide for Raspberry Pi. 
## Usage: 
 - ```gpio readall``` for a quick printout of your connector details
   ```
   +-----+-----+---------+------+---+---Pi 3B--+---+------+---------+-----+-----+
   | BCM | wPi |   Name  | Mode | V | Physical | V | Mode | Name    | wPi | BCM |
   +-----+-----+---------+------+---+----++----+---+------+---------+-----+-----+
   |     |     |    3.3v |      |   |  1 || 2  |   |      | 5v      |     |     |
   |   2 |   8 |   SDA.1 |   IN | 1 |  3 || 4  |   |      | 5v      |     |     |
   |   3 |   9 |   SCL.1 |   IN | 1 |  5 || 6  |   |      | 0v      |     |     |
   |   4 |   7 | GPIO. 7 |  OUT | 1 |  7 || 8  | 0 | IN   | TxD     | 15  | 14  |
   |     |     |      0v |      |   |  9 || 10 | 1 | IN   | RxD     | 16  | 15  |
   |  17 |   0 | GPIO. 0 |   IN | 0 | 11 || 12 | 0 | IN   | GPIO. 1 | 1   | 18  |
   |  27 |   2 | GPIO. 2 |   IN | 0 | 13 || 14 |   |      | 0v      |     |     |
   |  22 |   3 | GPIO. 3 |   IN | 0 | 15 || 16 | 0 | IN   | GPIO. 4 | 4   | 23  |
   |     |     |    3.3v |      |   | 17 || 18 | 0 | IN   | GPIO. 5 | 5   | 24  |
   |  10 |  12 |    MOSI |   IN | 0 | 19 || 20 |   |      | 0v      |     |     |
   |   9 |  13 |    MISO |   IN | 0 | 21 || 22 | 0 | IN   | GPIO. 6 | 6   | 25  |
   |  11 |  14 |    SCLK |   IN | 0 | 23 || 24 | 1 | IN   | CE0     | 10  | 8   |
   |     |     |      0v |      |   | 25 || 26 | 0 | IN   | CE1     | 11  | 7   |
   |   0 |  30 |   SDA.0 |   IN | 1 | 27 || 28 | 1 | IN   | SCL.0   | 31  | 1   |
   |   5 |  21 | GPIO.21 |   IN | 1 | 29 || 30 |   |      | 0v      |     |     |
   |   6 |  22 | GPIO.22 |   IN | 1 | 31 || 32 | 0 | IN   | GPIO.26 | 26  | 12  |
   |  13 |  23 | GPIO.23 |   IN | 0 | 33 || 34 |   |      | 0v      |     |     |
   |  19 |  24 | GPIO.24 |   IN | 0 | 35 || 36 | 0 | IN   | GPIO.27 | 27  | 16  |
   |  26 |  25 | GPIO.25 |   IN | 0 | 37 || 38 | 0 | IN   | GPIO.28 | 28  | 20  |
   |     |     |      0v |      |   | 39 || 40 | 0 | IN   | GPIO.29 | 29  | 21  |
   +-----+-----+---------+------+---+----++----+---+------+---------+-----+-----+
   | BCM | wPi |   Name  | Mode | V | Physical | V | Mode | Name    | wPi | BCM |
   +-----+-----+---------+------+---+---Pi 3B--+---+------+---------+-----+-----+

   ```
 - Common shell command: 
   - ```mode <pin> <mode> <br/>```
     Set a pin into input, output or pwm mode. Can also use the literals up, down or tri to set the internal pull-up, pull-down  or  tristate (off) controls. <br/>
     ```gpio mode 7 out``` <br/>
     ```gpio mode 7 in```
   - ```write <pin> <value> <br/>```
     Write the given value (0 or 1) to the pin. You need to set the pin to output mode first. <br/>
     ```gpio write 7 1``` <br/>
     ```gpio write 7 0``` <br/>
     Writes the value HIGH or LOW (1 or 0) to the given pin which must have been previously set as an output. <br/>
     WiringPi treats any non-zero number as HIGH, however 0 is the only representation of LOW.
