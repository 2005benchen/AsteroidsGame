class Asteroid extends Floater
{
  private double check;
  public Asteroid(int c, int d) {

    corners = 4;

    xCorners = new int[corners];
    yCorners = new int[corners];

    xCorners[0] = 4*10;
    yCorners[0] = 0;
    xCorners[1] = 6*d;
    yCorners[1] = 6*c;
    xCorners[2] = -4*d;
    yCorners[2] = 4*c;
    xCorners[3] = -4*10;
    yCorners[3] = 0;


    myColor = color(194, 88, 17);
    myCenterX = Math.random()*1000;
    myCenterY = Math.random()*1000;
    check = (double)(Math.random()*5) -4;
    if (check == 0) {
      if (Math.random()  < 1) {
        check = 2;
      } else {
        check = -2;
      }
    }
    myXspeed = Math.random()*3 - 1;
    myYspeed = Math.random()*3 - 1;
    myPointDirection = Math.random()*360;
  }

  public void setX(int x) {
    myCenterX = x;
  }
  public int getX() {
    return (int)myCenterX;
  }

  public void setY(int y) {
    myCenterY = y;
  }
  public int getY() {
    return (int)myCenterY;
  }

  public void setXspeed(double x) {
    myXspeed = x;
  }
  public double getXspeed() {
    return myXspeed;
  }

  public void setYspeed(double y) {
    myYspeed = y;
  }
  public double getYspeed() {
    return myYspeed;
  }

  public void setPointDirection(int degrees) {
    myPointDirection = degrees;
  }
  
  public double getPointDirection() {
    return (int)myPointDirection;
  }
  
  public void setDistanceA(int d){
     distance = d;
   }
  
  public int getDistanceA(){
    return distance;
  }
      
  public void setDistanceB(int d){
    distance = d;
  }
  
  public int getDistanceB(){
    return distance;
  }

  public void move () {

    myPointDirection += check;
    myCenterX += myXspeed;
    myCenterY += myYspeed;


    if (myCenterX > width){
      myCenterX = 0;
    } else if (myCenterX < 0){
      myCenterX = width;
    }
    if (myCenterY > height){
      myCenterY = 0;
    } else if (myCenterY < 0){
      myCenterY = height;
    }
  }
}
