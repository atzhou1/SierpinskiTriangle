public void setup()
{
	size(400,400);
}
public void draw()
{
	background(0);
	sierpinski(100, 300, 200);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	if(len<=25)
	{
		//triangle(x, y, x+100, y-200, x+200, y);
		triangle(x, y, x+len, y, x+len/2, y-len);
	}
	else 
	{
		sierpinski(x, y, len/2);
		sierpinski(x+len/2, y, len/2);
		sierpinski(x+len/4, y-len/2, len/2);
	}
}