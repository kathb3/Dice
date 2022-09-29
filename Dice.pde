void setup()
{
	noLoop();
}
void draw()
{
	//your code here
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	
	Die(int x, int y) //constructor
	{
		//variable initializations here
	}
	void roll()
	{
		//your code here
	}
	void show()
	{
		//your code here
	}
}


//balloon
class Balloon{
  int mySize, myX, myY;
  Balloon(int x, int y){
    //fancy initializer
    mySize = 0;
    myX = x;
    myY = y;
  }
  void show(){
    fill(255,0,0);
    ellipse(myX,myY,mySize,mySize);
  }
  void inflate(){
    mySize = mySize - 1;
  }
}//end balloon class

Balloon bob;
Balloon sue;

void setup(){
  size(300,300);
  bob = new Balloon(100,150);
  sue = new Balloon(200,100);
}

void draw(){
  System.out.println(bob.mySize);
  noStroke();
  bob.inflate();
  bob.show();
  sue.inflate();
  sue.show();
}
