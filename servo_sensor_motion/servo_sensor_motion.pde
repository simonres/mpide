// Sweep
// by BARRAGAN <http://barraganstudio.com> 
// This example code is in the public domain.

// NOTE: UART will be disabled when servo is attached to pin 0 or 1.


#include <Servo.h> 
 
Servo myservo;  // create servo object to control a servo 
               // a maximum of eight servo objects can be created 
const int sensor = 2;
const int ledr= 12;

const int ledv = 13; 
 
int pos = 0;    // variable to store the servo position 
 
void setup() 
{ 
  pinMode(sensor, INPUT);
  pinMode(ledv, OUTPUT);
  pinMode(ledr, OUTPUT);
  myservo.attach(9);  // attaches the servo on pin 9 to the servo object 
} 
 
 
void loop() 
{ 
int value = digitalRead(sensor);

if  (value == HIGH)
{
  digitalWrite(ledr, LOW); 
  digitalWrite(ledv, HIGH);
  for(pos = 0; pos < 180; pos += 4)  // goes from 0 degrees to 180 degrees 
  {                                  // in steps of 1 degree 
    myservo.write(pos);              // tell servo to go to position in variable 'pos' 
    delay(15);                       // waits 15ms for the servo to reach the position 
  }
 digitalWrite(ledv, LOW); 
  for(pos = 180; pos>=1; pos-=4)     // goes from 180 degrees to 0 degrees 
  {                                
    myservo.write(pos);              // tell servo to go to position in variable 'pos' 
    delay(15);                       // waits 15ms for the servo to reach the position 
  } 
delay(150);
}
else
{
  digitalWrite(ledr, HIGH);
  digitalWrite(ledv, LOW);
 
}  
  
}
