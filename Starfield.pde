// NormalParticle p1 = new NormalParticle();
// NormalParticle [] cluster;

Particle [] cluster;

void setup()
{
	//your code here
	size(600,600);
	background(19,16,54);
	cluster = new Particle [500];

	for (int j = 0; j < cluster.length; j++)
	{
		cluster[j] = new NormalParticle();
	}
	// for (int j = 0; j < cluster.length/4; j++)
	// {
	// 	cluster[j] = new OddballParticle();
	// }
	for (int j = 0; j < cluster.length/2; j++)
	{
		cluster[j] = new FireWork();
	}
	for (int j = 0; j < cluster.length/4; j++)
	{
		cluster[j] = new OddballParticle();
	}
	cluster[cluster.length-1] = new JumboParticle();


}
void draw()
{
	//your code here
	fill(19,16,54,100);
	rect(15,15,565,565);

	for (int i = 0; i < cluster.length; i++)
	{
		cluster[i].move();
		cluster[i].show();
	}

}
void mousePressed()
{
	background(19,16,54);
	cluster = new Particle [500];

	for (int j = 0; j < cluster.length; j++)
	{
		cluster[j] = new NormalParticle();
	}
	// for (int j = 0; j < cluster.length/4; j++)
	// {
	// 	cluster[j] = new OddballParticle();
	// }
	for (int j = 0; j < cluster.length/2; j++)
	{
		cluster[j] = new FireWork();
	}
	for (int j = 0; j < cluster.length/4; j++)
	{
		cluster[j] = new OddballParticle();
	}
	cluster[cluster.length-1] = new JumboParticle();
}
class NormalParticle implements Particle
{
	double myX, myY,dSpeed, dDirection;

	NormalParticle()
	{
		myX = mouseY;
		myY = mouseX;
		dSpeed = (Math.random()*5);
		dDirection = (Math.random()*2*Math.PI);
	}
	public void move()
	{
		myX += dSpeed*Math.cos(dDirection);
		myY += dSpeed*Math.sin(dDirection);
	}
	public void show()
	{
		fill(218,223,132);
		ellipse((float)myX, (float)myY, 5,5);
	}
}
interface Particle
{
	//your code here
	public void move();
	public void show(); 
}
class OddballParticle implements Particle //uses an interface
{
	double myX, myY,dSpeed, dDirection;

	OddballParticle()
	{
		myX = mouseX;
		myY = mouseY;
		dSpeed = (Math.random()*5);
		dDirection = (Math.random()*2*Math.PI);
	}
	public void move()
	{
		myX += dSpeed*Math.cos(dDirection);
		myY += dSpeed*Math.sin(dDirection);
	}
	public void show()
	{
		noStroke();
		fill(158,100,151);
		rect((float)myX, (float)myY, 7, 7);
	}
}

	class FireWork implements Particle //uses an interface
{
	double myX, myY,dSpeed, dDirection;

	FireWork()
	{
		myX = mouseX - 100;
		myY = mouseY - 100;
		dSpeed = (Math.random()*5);
		dDirection = (Math.random()*2*Math.PI);
	}
	public void move()
	{
		myX += dSpeed*Math.cos(dDirection);
		myY += dSpeed*Math.sin(dDirection);
	}
	public void show()
	{
		noStroke();
		fill(116,189,77);
		rect((float)myX, (float)myY, 3, 3);
	}
}
class JumboParticle extends NormalParticle //uses inheritance
{
		public void show()
	{
		fill(255);
		ellipse((float)myX, (float)myY, 9,9);
	}
}


