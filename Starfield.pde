NormalParticle[] starfield;
void setup()
{
	size(600,600);
	background(0);
	starfield = new NormalParticle[300];
	for(int i=0; i<starfield.length;i++)
		starfield[i] = new NormalParticle();

}
void draw()
{	
	background(0);
	for(int i=0;i<starfield.length;i++)
	{
		starfield[i].move();
		starfield[i].show();
	}

}
class NormalParticle
{
	double myX, myY, myAngle, mySpeed;
	int myColor;

	NormalParticle()
	{
		myX = 300;
		myY = 300;
		myAngle = Math.random()*2 *Math.PI;
		mySpeed = Math.random()*10;
		myColor = color(255,255,255);
	}

	void move()
	{
		myX = myX + Math.cos(myAngle)*mySpeed;
		myY = myY + Math.sin(myAngle)*mySpeed;	
	}

	void show()
	{	
		ellipse((float)myX,(float)myY,10,10);
	}
	
}
interface Particle
{
	//your code here
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}

