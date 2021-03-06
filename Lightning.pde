int startx1 = 50;
int starty1 = 250;
int endx1 = 80;
int endy1 = 250;
int red1 = (int)((Math.random()*81)+175);
int green1 = (int)(Math.random()*42);
int blue1 = (int)(Math.random()*42);

int startx2 = 450;
int starty2 = 250;
int endx2 = 420;
int endy2 = 250;
int red2 = (int)((Math.random()*71)+185);
int green2 = (int)((Math.random()*71)+185);
int blue2 = (int)(Math.random()*71);

int health1 = 10;
int health2 = 10;

int leftWizHit = 1;
int rightWizHit = 1;

int x = 401;

int targetX = 0;

void setup()
{
  size(500,500);
  strokeWeight(5);
  background(100,149,237);                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         
}
void draw()
{
	background(100,149,237);
	target();
	leftWiz();
	rightWiz();
	if (mousePressed && (mouseButton==LEFT) && (x>235) && (x<265))
	{
		accLeftWizBolt();
		textAlign(CENTER);
		fill(0);
		textSize(40);
		text("Nice!",250,375);
	} else if (mousePressed && (mouseButton==LEFT)) {
		leftWizBolt();
	} else if (mousePressed && (mouseButton==RIGHT) && (x>235) && (x<265)) {
		accRightWizBolt();
		textAlign(CENTER);
		fill(127);
		textSize(40);
		text("Nice!",250,375);
	} else if (mousePressed && (mouseButton==RIGHT)) {
		rightWizBolt();
	}
	health();
	targetSlide();
	gameOver();
}
void leftWiz()
{
	stroke(red1,green1,blue1);
	fill(178,34,34);
	ellipse(50,250,50,50);
}
void rightWiz()
{
	stroke(red2,green2,blue2);
	fill(255,215,0);
	ellipse(450,250,50,50);
}

void leftWizBolt()
{
	stroke(red1,green1,blue1);
	while(endx1<500)
	{
		endx1 = startx1 + (int)(Math.random()*10);
		endy1 = starty1 + (int)((Math.random()*31)-15);
		line(startx1,starty1,endx1,endy1);
		startx1=endx1;
		starty1=endy1;
	}
}
void rightWizBolt()
{
	stroke(red2,green2,blue2);
	while(endx2>0)
	{
		endx2 = startx2 - (int)(Math.random()*10);
		endy2 = starty2 + (int)((Math.random()*31)-15);
		line(startx2,starty2,endx2,endy2);
		startx2=endx2;
		starty2=endy2;
	}
}
void accLeftWizBolt()
{
	stroke(red1,green1,blue1);
	while(endx1<500)
	{
		endx1 = startx1 + (int)(Math.random()*10);
		endy1 = starty1 + (int)((Math.random()*17)-8);
		line(startx1,starty1,endx1,endy1);
		startx1=endx1;
		starty1=endy1;
	}
}
void accRightWizBolt()
{
	stroke(red2,green2,blue2);
	while(endx2>0)
	{
		endx2 = startx2 - (int)(Math.random()*10);
		endy2 = starty2 + (int)((Math.random()*17)-8);
		line(startx2,starty2,endx2,endy2);
		startx2=endx2;
		starty2=endy2;
	}
}
void mousePressed()
{	
	startx1 = 50;
	starty1 = 250;
	endx1 = 60;
	endy1 = 250;
	if (Math.random()<0.5)
	{
		red1 = (int)((Math.random()*91)+165);
	} else {
		red1 = (int)(Math.random()*51);
	}
	green1 = (int)(Math.random()*41);
	blue1 = (int)(Math.random()*41);

	startx2 = 450;
	starty2 = 250;
	endx2 = 440;
	endy2 = 250;
	red2 = (int)((Math.random()*71)+185);
	green2 = (int)((Math.random()*71)+185);
	if (Math.random()<0.5)
	{
		blue2 = (int)((Math.random()*21)+80);
	} else {
		blue2 = (int)((Math.random()*21)+235);
	}
	redraw();
}
void health()
{
	textSize(40);
	textAlign(CENTER);
	fill(80,0,0);
	text(health1,50,350);
	fill(255,255,170);
	text(health2,450,350);
	if((endy2>215) && (endy2<285) && (endx1<=75) && (endx1>=25))
	{
		leftWizHit = 0;
	}
	if((endy1>215) && (endy1<285) && (endx2>=425) && (endx2<=475))
	{
		rightWizHit = 0;
	}
	if(leftWizHit==0)
	{
		health1 = health1 - 1;
		leftWizHit = 1;
		endx1 = 80;
		textAlign(CENTER);
		fill(0);
		textSize(40);
		text("Hit!",100,200);
	}
	if(rightWizHit==0)
	{
		health2 = health2 - 1;
		rightWizHit = 1;
		endx2 = 420;
		textAlign(CENTER);
		fill(255);
		textSize(40);
		text("Hit!",400,200);
	}
}
void target()
{
	fill(255);
	stroke(0);
	rect(x,400,7,50);
	if(x>400)
	{
		targetX = 0;
	}
	if(x<100)
	{
		targetX = 1;
	}
	if(targetX == 0)
	{
		x = x-8;
	} else {
		x = x+8;
	}
}
void targetSlide()
{
	fill(50,205,50);
	stroke(50,205,50);
	rect(235,400,30,50);
}
void gameOver()
{
	if(health1==0)
	{
		background(0);
		textAlign(CENTER);
		fill(255);
		text("Right wins!",250,250);
		health1 = 10;
		health2 = 10;
	}
	if(health2==0)
	{
		background(0);
		textAlign(CENTER);
		fill(255);
		text("Left wins!",250,250);
		health1 = 10;
		health2 = 10;
	}
}
void mouseReleased()
{
	background(100,149,237);
}