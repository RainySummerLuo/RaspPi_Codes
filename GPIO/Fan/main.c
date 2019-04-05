#include <wiringPi.h>

int main(void) {
    wiringPiSetup();
    pinMode(7, OUTPUT);

    digitalWrite(7, HIGH);
    /*
    delay(500);
    digitalWrite(0, LOW);
    delay(500);
    */
}