// Playing with Tiles
// Rupert Russell
// September 19 2020  Stage 3 Covid-19 Restrictions in Ballarat
// Artwork on Redbubble at: 
// code on Github at: 

float x1, y1, x2, y2;
int noiseValue = 0;
float grey;
int size = 150;
float noiseScale = 100; // was 255

float red, green, blue;
int counter = 0;

void setup() {
  background(0);
  size (10000, 10000);
  strokeWeight(5);
}


void draw() {
  translate(width/2, height/2);

  rotate(degrees(random(360)));

  x1 = random(width / 3) - 150;
  x2 = random(width / 3) + 150;

  y1 = random(height / 3) - 150;
  y2 = random(height / 3) + 150;


  //beginShape();
  //vertex(x1, y1);
  //vertex(x2, y1);
  //vertex(x2, y2);
  //vertex(x1, y2);
  //vertex(x1, y1);
  //endShape(CLOSE);


  red = random(5);
  green = random(5);
  blue = random(5);

  for (float xPoint = x1; xPoint < x2; xPoint = xPoint + size ) {
    for (float yPoint = y1; yPoint < y2; yPoint= yPoint + size) {
      grey = noise(noiseValue) * noiseScale ;

      fill(grey * red, grey * green, grey * blue);
      stroke(0);
      square(xPoint, yPoint, size);
      noiseValue++;
    }
  }
}


void mouseClicked(){
save("tiles_"+ counter + ".png");
println("saved tiles_"+ counter + ".png");
  counter ++;
 
}
