// Golf cart voltage monitoring

// Analog pins apparently are automatically mapped as inputs so I don't have to declare them

int bat1 = 0 // variable used to store value from first battery it is on analog pin0 
int bat2 = 0 // variable used to store value from second battery it is on analog pin1
int bat3 = 0 // variable used to store value from third battery it is on analog pin2
int current = 0 // variable used to store the current
int charge = 0 // variable used to store charge

// Not sure what outputs we're using yet they would go here

void loop() {
  bat1 = analogRead(0); 
  bat2 = analogRead(1); // read values from sensors this gives a value of 0-1023 that corresponds to 0v to 5v
  bat3 = analogRead(2); 
  // need to convert the values from the 0-1023 to 0-5v then multiply by the voltage divider so bat1 multiplied by 3 then bat2 multiplied by 6 and bat3 multiplied by 9.
  // then we have to subtract bat2 from bat3. and bat1 from bat2 to get the values of the single batteries. Then we need to calculate the current off the entire battery
  // pack using ohms law(not sure if we need to add another resitor I will try to get a mockup and ask dr hartley. Finally we take the integral? of the current to get the charge
  

