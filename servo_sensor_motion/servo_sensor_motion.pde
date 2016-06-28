#include <Servo.h>
Servo myservo;

const int ledPin= 13;
const int inputPin= 2;
int pos = 0;

void setup(){
pinMode(ledPin, OUTPUT);
myservo.attach(9);
pinMode(inputPin, INPUT);
}

void loop(){
int value= digitalRead(inputPin);

if (value == HIGH)
{
digitalWrite(ledPin, HIGH);
myservo.writeMicroseconds(1400);
delay(1000);
myservo.writeMicroseconds(1000);
delay(3000);
digitalWrite(ledPin, LOW);
}
else
{
digitalWrite(ledPin, LOW);
miservo.write(pos);
}

}

