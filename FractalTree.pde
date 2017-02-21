private double fractionLength = 0.8; 
private int smallestBranch = 10; 
private double branchAngle = .2;  
public void setup() 
{   
	size(640,480);    
	noLoop(); 
} 
public void draw() 
{   
	background(0);   
	stroke(0, 255, 0);   
	line(320, 480, 320, 380);  
	drawBranches(320, 380, 50, Math.PI * 1.5);  
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
	double angle1 = angle + branchAngle;//your code here    
	double angle2 = angle - branchAngle;
	branchLength = branchLength*fractionLength;
	int firstX = (int)(branchLength*Math.cos(angle1)+x);
	int firstY = (int)(branchLength*Math.sin(angle1)+y);
	int secondX = (int)(branchLength*Math.cos(angle2)+x);
	int secondY = (int)(branchLength*Math.sin(angle2)+y);
	line( x, y, firstX, firstY);
	line( x, y, secondX, secondY);
	if(branchLength>smallestBranch)
	{
		drawBranches(firstX, firstY, branchLength, angle2 - 1);
		drawBranches(firstX, firstY, branchLength, angle1 + 1 );
	}  
} 

