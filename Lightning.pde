int startx = 500;
int starty = 250;
int endx = 490;
int endy = 250;
int red = (int)((Math.random()*51)+205);
int green = (int)((Math.random()*51)+205);
int blue = (int)(Math.random()*100);

void setup()
{
  size(500,500);
  strokeWeight(3);
  background(0,0,255);                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         
}
void draw()
{
	stroke(red,green,blue);
	while(endx>0)
	{
		endx = startx - (int)(Math.random()*10);
		endy = starty + (int)((Math.random()*19)-9);
		line(startx,starty,endx,endy);
		startx=endx;
		starty=endy;
	}

}
void mousePressed()
{
	startx = 500;
	starty = 250;
	endx = 490;
	endy = 250;
	red = (int)((Math.random()*71)+185);
	green = (int)((Math.random()*71)+185);
	if (Math.random()<0.5)
	{
		blue = (int)(Math.random()*51);
	} else {
		blue = (int)((Math.random()*51)+205);
	}
	
	redraw();
}

