public void setup()
{
	size(500,500);
}

public void draw()
{
  background(0);
  myFractal(100,255,500-(100/2)-10, 0);
}

public void myFractal(float size, float x, float y, int rotation)
{
	stroke(255);
	noFill();
	if(rotation==0)
	{	
		quad(x-(size/2),y+(size/2) , x+(size/2),y+(size/2) , x+(size/2),y-(size/2) , x-(size/2),y-(size/2));
		
		if(rotation==0)
		{
			rotation=1;
		}
		else if(rotation==1)
		{
			rotation=0;
		}
		myFractal(size*(float)Math.sqrt(2)/2, x-(size/2), y-(size/2)-(size*(float)Math.sqrt(2)/2), rotation);
		myFractal(size*(float)Math.sqrt(2)/2, x+(size/2), y-(size/2)-(size*(float)Math.sqrt(2)/2), rotation); 

	}
	else if(rotation==1)
	{
		quad(x,y+(size*(float)Math.sqrt(2)/2) , x+(size*(float)Math.sqrt(2)/2),y , x,y-(size*(float)Math.sqrt(2)/2) , x-(size*(float)Math.sqrt(2)/2),y);
		
		if(rotation==0)
		{
			rotation=1;
		}
		else if(rotation==1)
		{
			rotation=0;
		}
		myFractal(size*(float)Math.sqrt(2)/2, x-(size/2), y-(size/2)-(size*(float)Math.sqrt(2)/2), rotation);
		myFractal(size*(float)Math.sqrt(2)/2, x+(size/2), y-(size/2)-(size*(float)Math.sqrt(2)/2), rotation); 
	}
	else
	{
		if(rotation==0)
		{
			rotation=1;
		}
		else if(rotation==1)
		{
			rotation=0;
		}
		myFractal(size*(float)Math.sqrt(2)/2, x-(size/2), y-(size/2)-(size*(float)Math.sqrt(2)/2), rotation);
		myFractal(size*(float)Math.sqrt(2)/2, x+(size/2), y-(size/2)-(size*(float)Math.sqrt(2)/2), rotation); 
	}

}