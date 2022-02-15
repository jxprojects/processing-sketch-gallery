
Star[] stars = new Star[10000000];
int currentStar = 0;
int i=5;
int j=5;

void setup() {
  // general setup
  size (500,500);
} //JESUS FUCH 

void draw() {
  background(255);
    while (j < 510) {
      i=0;
      while (i < 510) {
        stars[currentStar] = new Star(this, i, j);
        currentStar++;
        i+=10;
      }
      j+=10;
    }
  for (int k=0; k<currentStar; k++) {
    stars[k].display();
  }
}

class Star {
  private int x;
  private int y;
  private float r;
  private float g;
  private float b;
  
  private PApplet canvas;
  Star(PApplet canvas, int x, int y) {
    this.canvas = canvas;
    this.x = x;
    this.y = y;
    
    r = this.canvas.random(200, 255);
    g = this.canvas.random(200, 255);
    b = this.canvas.random(200, 255);
  }
  
  void display() {
      this.canvas.noStroke();
      this.canvas.fill(r, g, b);
      this.canvas.beginShape();
      this.canvas.vertex(x, y);
      this.canvas.vertex(x+10, y-10);
      this.canvas.vertex(x-10,y-10);
      this.canvas.endShape();
      this.canvas.beginShape();
      this.canvas.vertex(x, y-18);
      this.canvas.vertex(x+10, y+2);
      this.canvas.vertex(x-10,y+2);
      this.canvas.endShape();
      
  }
}
