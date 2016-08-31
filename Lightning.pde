int startx = 150;
int starty = 0;
int endx = 150;
int endy = 0;
int cloudx = 0;
void setup()
{
  size(300,300);
  strokeWeight(5);
  background(0);
}
void draw()
{
  while(endy < 300)
  {
  	stroke((int) (Math.random() * 255), (int) (Math.random() * 255), (int) (Math.random() * 255));
    endx = endx + ((int) ((Math.random() * 18) - 9));
    endy = endy + ((int) (Math.random() * 9));
    line (startx, starty, endx, endy);
  	startx = endx;
  	starty = endy;
  }
  clouds();
}
void mousePressed()
{
	background(0);
	startx = 150;
	starty = 0;
	endx = 150;
	endy = 0;
	cloudx = 0;
}
void clouds()
{
  while(cloudx < 300)
  {
  	noStroke();
  	fill(150);
  	ellipse(cloudx, 20, 60, 60);
  	cloudx = cloudx + 40;
  }
}
