int startx = 0;
int starty = 150;
int endx = 0;
int endy = 150;
void setup()
{
  size(300,300);
  strokeWeight(2);
  background(0);
}
void draw()
{
  while(endx < 300)
  {
  	stroke((int) (Math.random() * 255), (int) (Math.random() * 255), (int) (Math.random() * 255));
    endx = endx + ((int) (Math.random() * 9));
    endy = endy + ((int) ((Math.random() * 18) - 9));
    line (startx, starty, endx, endy);
  	startx = endx;
  	starty = endy;
  }
}
void mousePressed()
{
	background(0);
	startx = 0;
	starty = 150;
	endx = 0;
	endy = 150;
}
