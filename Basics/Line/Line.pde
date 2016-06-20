/* 
*  Portrait 01
*  Grundstruktur Programm
*  HKB 16 Parametric Design, MR
*/

// Setup Funktion, wird einmal aufgerufen
void setup(){ 
  size(500,500); // Grösse des Fensters definieren
   background(255);
}

// draw Funktion, wird geloopt
void draw(){
  line(random(0,width),random(0,height),random(0,width),random(0,height));
}