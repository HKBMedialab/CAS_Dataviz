// Example to process CSV data
// Table syntax in Processing reference: <a href="http://www.processing.org/reference/Table.html" target="_blank">http://www.processing.org/reference/Table.html</a>
 
//http://www.bafu.admin.ch/luft/luftbelastung/blick_zurueck/datenabfrage/index.html?lang=de


Table table;
int rectsize=10;
color from = color(135,206,250);
color to = color(139,69,19);

void setup() {
  size(800,800);
  table = loadTable("pm10.csv", "header");
  println(table.getRowCount() + " total rows in table"); 
  int posX=0;
  int posY=0;
  for (TableRow row : table.rows()) { //ABK für  for (int i = 0; i < zeilen.length; i++ ){int wert = zeilen[i];}
   String datum = row.getString("Datum");
   int value=row.getInt("Zurich");
   float colorlerp=map(value,0,50,0,1);
   
   color fillcolor = lerpColor(from, to, colorlerp);

   fill(fillcolor);
   noStroke();
     rect(posX,posY,rectsize,rectsize);
     posX=posX+rectsize;
     if(posX>width){
     posX=0;
     posY+=rectsize;
     }
  }
  
}