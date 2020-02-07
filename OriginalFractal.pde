public void setup()
{
	size(500,500);
}

public void draw()
{
  background(0);
  myFractal(100,255,500-(100/2)-10, 0);
}

//rotation is whether or not the square has a face torward the ground (0) or a point torward the ground (1)
//orientation is where the next squares will be drawn 
public void myFractal(float size, float x, float y, int rotation)
{
	stroke(255);
	noFill();
	if(size<3)
	{	
	}
	else
	{
		if(rotation==0)
		{
			quad(x-(size/2),y+(size/2) , x+(size/2),y+(size/2) , x+(size/2),y-(size/2) , x-(size/2),y-(size/2));
			rotation=1;
			myFractal(size*(float)Math.sqrt(2)/2, x-(size/2), y-(size/2)-((size*(float)Math.sqrt(2)/2)*(float)Math.sqrt(2)/2), rotation);
			myFractal(size*(float)Math.sqrt(2)/2, x+(size/2), y-(size/2)-((size*(float)Math.sqrt(2)/2)*(float)Math.sqrt(2)/2), rotation); 
		}
		else if(rotation==1)
		{
			quad(x,y+(size*(float)Math.sqrt(2)/2) , x+(size*(float)Math.sqrt(2)/2),y , x,y-(size*(float)Math.sqrt(2)/2) , x-(size*(float)Math.sqrt(2)/2),y);
			rotation=0;
			if(x<width/2)
			{
				myFractal(size*(float)Math.sqrt(2)/2, x-size*(float)Math.sqrt(2)/2-size*(float)Math.sqrt(2)/4, y-size*(float)Math.sqrt(2)/4, rotation);
				myFractal(size*(float)Math.sqrt(2)/2, x-size*(float)Math.sqrt(2)/4, y-size*(float)Math.sqrt(2)/2-size*(float)Math.sqrt(2)/4, rotation); 
			}
			if(x>width/2)
			{
				myFractal(size*(float)Math.sqrt(2)/2, x+size*(float)Math.sqrt(2)/2+size*(float)Math.sqrt(2)/4, y-size*(float)Math.sqrt(2)/4, rotation);
				myFractal(size*(float)Math.sqrt(2)/2, x+size*(float)Math.sqrt(2)/4, y-size*(float)Math.sqrt(2)/2-size*(float)Math.sqrt(2)/4, rotation); 
			}
		}
	}

}