int LDR = 1;
int val = 0;

void setup(){
Serial.begin(115200); 
}
void loop(){
val= analogRead(LDR);

Serial.print(val); 
delay(500`)
  
}
