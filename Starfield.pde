Particle [] starfield;
void setup()
{
	size(600,600);
	background(0);
	starfield = new Particle[3000];
	for(int i=0; i<starfield.length;i++)
	{
		if(i%300==0)
			starfield[i] = new OddballParticle();
		else if(i%2==0)
			starfield[i] = new NormalParticle();
		else
			starfield[i] = new JumboParticle();
	}
	

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

/*void mousePressed()
{
	for(int i=0;i<starfield.length;i++)
	starfield[i].move();
}
*/

class NormalParticle implements Particle
{
	double myX, myY, myAngle, mySpeed;
	int myColor;

	NormalParticle()
	{
		myX = 300;
		myY = 300;
		myAngle = Math.random()*2 *Math.PI;
		mySpeed = Math.random()*10;
		myColor = color(100,180,(int)(Math.random()*215)+40);
	}

	public void move()
	{
		myX = myX + Math.cos(myAngle)*mySpeed;
		myY = myY + Math.sin(myAngle)*mySpeed;	
	}

	public void show()
	{	
		noStroke();
		fill(myColor);
		ellipse((float)myX,(float)myY,10,10);
	}
	
}
interface Particle
{
	public void show();
	public void move();
}
class OddballParticle implements Particle //uses an interface
{
	double myX, myY, myAngle, mySpeed;

	OddballParticle(){
		myX=random(200,400);
		myY=random(200,400);
		myAngle=random(0,2*PI);
		mySpeed=Math.random()*5;
	}

	public void move()
	{
		myX = myX + Math.cos(myAngle)*mySpeed;
		myY = myY + Math.sin(myAngle)*mySpeed;
	}

	public void show()
	{
		fill(#EDD892);
		ellipse((float)myX,(float)myY,10,10);
		rect((float)myX-3,(float)myY,6,20);
		rect((float)myX-3,(float)myY+20,2,10);
		rect((float)myX+1,(float)myY+20,2,10);

	}
}
class JumboParticle extends NormalParticle//uses inheritance
{
	public void show()
	{
		fill(255,0,0);
		ellipse((float)myX,(float)myY,3,3);
	}
}

