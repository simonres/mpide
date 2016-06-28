// Sweep
// by BARRAGAN <http://barraganstudio.com> 
// This example code is in the public domain.

// NOTE: UART will be disabled when servo is attached to pin 0 or 1.


#include <Servo.h> 
 
Servo myservo;  // create servo object to control a servo 
               // a maximum of eight servo objects can be created 
 
int pos = 0;    // variable to store the servo position 
 
void setup() 
{ 
  myservo.attach(9);  // attaches the servo on pin 9 to the servo object 
} 
 
 
void loop() 
{ 
  pos=10 
  myservo.write(pos);              // tell servo to go to position in variable 'pos' 
  delay(1000); // waits 15ms for the servo to reach the position 
  pos=0
  myservo.write(pos);              // tell servo to go to position in variable 'pos' 
  delay(15);                       // waits 15ms for the servo to reach the position 
}
