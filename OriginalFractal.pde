private int maxSize = 800;
private int miniSize = 20;
private int change = 20;
private int shift = 20;

public void setup()
{
	size(800,800);
	noLoop();
}
public void draw()
{
	background(0);
	noFill();
	stroke(124,249,255);
	drawCircles(0,0,20,20);
	drawCircles2(800,0,20,20);
	drawCircles3(0,800,20,20);
	drawCircles4(800,800,20,20);
}
public void drawCircles(int x,int y,int h, int w)
{
	int x1 = x + shift;
	int y1 = y + shift;
	ellipse(x,y,h,w);
	if(h < maxSize)
	{
		drawCircles(x1,y1,h+change,w+change);
	}
}
public void drawCircles2(int x,int y,int h, int w)
{
	int x2 = x - shift;
	int y2 = y + shift;
	ellipse(x,y,h,w);
	if(h < maxSize)
	{
		drawCircles2(x2,y2,h+change,w+change);
	}
}
public void drawCircles3(int x,int y,int h, int w)
{
	int x3 = x + shift;
	int y3 = y - shift;
	ellipse(x,y,h,w);
	if(h < maxSize)
	{
		drawCircles3(x3,y3,h+change,w+change);
	}
}
public void drawCircles4(int x,int y,int h, int w)
{
	int x4 = x - shift;
	int y4 = y - shift;
	ellipse(x,y,h,w);
	if(h < maxSize)
	{
		drawCircles4(x4,y4,h+change,w+change);
	}
}
public void keyTyped()
{
	if(key == 's')
	{
		if(maxSize > miniSize)
		{
		maxSize = maxSize - 25;
		redraw();
		}
	
	}
	if(key == 'w')
	{
		maxSize = maxSize + 25;
		redraw();
	}
}