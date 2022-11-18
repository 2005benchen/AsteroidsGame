class Spaceship extends Floater  
{   
  public Spaceship(){
    corners = 13;
    int[] xS = {-9,-5,5,6,7,8,12,8,-7,-10,-10,-9,-12};
    int[] yS = {-7,-2,-2,-3,-3,-2,0,2,2,0,-2,-2,-7};
    xCorners = xS;
    yCorners = yS;
    myColor = color(211,211,211);
    myCenterX = 500;
    myCenterY = 500;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 0;
  }
  
  public void setX(int x) {myCenterX = x;}
  public int getX() {return (int)myCenterX;}
  
  public void setY(int y)  {myCenterY = y;}
  public int getY()   {return (int)myCenterY;}
  
  public void setXspeed(double x) {myXspeed = x;}
  public double getXspeed()  {return myXspeed;}
  
  public void setYspeed(double y) {myYspeed = y;}
  public double getYspeed()  {return myYspeed;}
  
  public void setPointDirection(int degrees)  {myPointDirection = degrees;}
  public double getPointDirection() {return (int)myPointDirection;}

}
