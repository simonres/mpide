

#include <Servo.h> 
 
Servo myservo;  
                
 
int pos = 0;    
 
void setup() 
{ 
  myservo.attach(9);  
} 
 
 
void loop() 
{ 
 
  for(pos = 90; pos>=1; pos-=1)     
  {                                
    myservo.write(pos);             
    delay(15);                      
  } 
delay(2000);
} 

