matriz cuadro;
matriz cuadro2;

void setup()
{
  size(500,200);
  cuadro = new matriz(5,100,100,50,0,0);
  cuadro2 = new matriz(5,100,300, 50,0,0);
}

void draw()
{
  noStroke();
  background(random(255));
  cuadro.display();
  cuadro2.display();
  cuadro.zoom();
  cuadro2.zoom();
  
}

class matriz
{
  
  int t;
  int u;
  int x;
  int y;
  int i;
  int j;
  
  matriz(int t_, int u_, int x_, int y_, int i_, int j_){
    
    t = t_;
    u = u_;
    x = x_;
    y = y_;
    i = i_;
    j = j_;

}

void display(){
     for (i = 0; i<u; i+=t){
        for (j = 0; j<u; j+=t){
          fill (random(255));
          rect (x+i,y+j,t,t);
          }
    } 
}

void zoom(){
    if ((mouseX >= x & mouseX <= x+x) & (mouseY >= y & mouseY <= y+x)) {
      t= 10;
      }
      else {
      t= 5;
      }
    if ((mouseX >= x & mouseX <= x+x) & (mouseY >= y & mouseY <= y+x)) {
       t= 10;
      }
      else {
      t= 5;
      }
  }
}