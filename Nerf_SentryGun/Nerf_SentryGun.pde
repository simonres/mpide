
#include <Servo.h> 
 
Servo myservo;  
Servo myservo2;          
const int sensor = 2;
const int ledr= 12;
const int ledv = 13; 
int pos = 0;    
 
void setup() 
{ 
  pinMode(sensor, INPUT);
  pinMode(ledv, OUTPUT);
  pinMode(ledr, OUTPUT);
  myservo.attach(9);  
  myservo2.attach(8);
} 
 
 
void loop() 
{ 
int value = digitalRead(sensor);

if  (value == HIGH)
{
  digitalWrite(ledr, LOW); 
  digitalWrite(ledv, HIGH);
           
 for(pos = 90; pos>=1; pos-=4)     
  {                                
    myservo2.write(pos);               
    delay(15);                      
  } 
delay(1000); 
  
  for(pos = 0; pos < 180; pos += 4)  
  {                                  
    myservo.write(pos);              
    delay(15);                       
  }
 digitalWrite(ledv, LOW); 
  for(pos = 180; pos>=1; pos-=4)     
  {                                
    myservo.write(pos);              
    
    delay(15);                       
  } 
delay(150);
}
else
{
  digitalWrite(ledr, HIGH);
  digitalWrite(ledv, LOW);
}  
  
}
