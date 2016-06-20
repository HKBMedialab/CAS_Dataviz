// Example to process CSV data
// Table syntax in Processing reference: <a href="http://www.processing.org/reference/Table.html" target="_blank">http://www.processing.org/reference/Table.html</a>
import java.text.SimpleDateFormat;
import java.util.Date;

Table table;
int rectsize=10;
color from = color(135, 206, 250);
color to = color(139, 69, 19);

color z = color(0, 255, 0);
color b = color(0, 0, 255);

int counter;

void setup() {



  size(800, 800);



  table = loadTable("regen_2016.csv", "header");
  println(table.getRowCount() + " total rows in table"); 

  //float rectsize=width/table.getRowCount();
  println(rectsize);


  float posX=0;
  float posY=0;
  for (TableRow row : table.rows()) { //ABK für  for (int i = 0; i < zeilen.length; i++ ){int wert = zeilen[i];}
    String datum = row.getString("Datum");
    float value=row.getFloat("Bern");

fill(0, 0, 255,100);
    for (int i = 0; i < value; i++ ) {
      ellipse(posX,random(height),10,10);
    }

    float rectheight=map(value, 0, 50, 0, height);
    
    noStroke();
   // rect(posX, 0, rectsize, rectheight);
    posX=posX+rectsize;
  }
}