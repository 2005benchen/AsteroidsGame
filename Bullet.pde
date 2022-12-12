class Bullet extends Floater{
  public Bullet (Spaceship theShip){
    myCenterX= theShip.getX();
    myCenterY=theShip.getY();
    myPointDirection=theShip.getPointDirection();
    accelerate(6);
    myColor = color(255, 0, 0);

  }

  

  public void show(){
    stroke(myColor);
    ellipse((float)myCenterX,(float)myCenterY,10,10);
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

