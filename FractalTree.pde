private double fractionLength = .8; 
private int smallestBranch = 7; 
private double branchAngle = .5;  
public void setup() 
{   
	size(640,480);    
	noLoop(); 
} 
public void draw()
{   
	background(#939AA5);   
	stroke(#58763E);   
	line(320,480,320,380);   
	drawBranches(320,380,100,3*Math.PI/2); 

} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
	double angle1 = angle + branchAngle;
	double angle2 = angle - branchAngle;
	branchLength = branchLength * fractionLength;
	int endX1 = (int)(branchLength*Math.cos(angle1) + x);
	int endY1 = (int)(branchLength*Math.sin(angle1) + y);
	int endX2 = (int)(branchLength*Math.cos(angle2) + x);
	int endY2 = (int)(branchLength*Math.sin(angle2) + y);
	// line(endX1,endY1,320,380);
	// line(endX2,endY2,320,380);
	line(x,y,endX1,endY1);
	line(x,y,endX2,endY2);

	if (branchLength > smallestBranch){
	// line(x,y,endX1,endY1);
	// line(x,y,endX2,endY2);
	drawBranches(endX1,endY1,branchLength,angle1);
	drawBranches(endX2,endY2,branchLength,angle2);
}
	else
	{

	// drawBranches(endX1,endY1,branchLength,angle1);
	// drawBranches(endX2,endY2,branchLength,angle2);
	line(x,y,endX1,endY1);
	line(x,y,endX2,endY2);
}
} 
