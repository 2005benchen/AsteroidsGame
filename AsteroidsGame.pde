Spaceship bob = new Spaceship();
Star [] stars;
boolean wKey, sKey, exhaust;

public void setup() {
  size(1000, 1000);
  stars = new Star[200];
  for (int i =0; i < stars.length; i++) {
    stars[i] = new Star();
  }
}

public void draw() {
  background(0);
  noStroke();
  for (int i = 0; i < stars.length; i++) {
    stars[i].show();
  }
  bob.show();
  bob.move();
    
  if(wKey == true){
    bob.setX((bob.getX()+(int)bob.getXspeed()));
    bob.setY((bob.getY()+(int)bob.getYspeed()));
    bob.accelerate(.025);
    exhaust = true;
  }
  if(wKey == false){
    bob.setX((bob.getX()+(int)bob.getXspeed()));
    bob.setY((bob.getY()+(int)bob.getYspeed()));
    bob.accelerate(0);
  }
  if(sKey == true){ 
    bob.setX((bob.getX()+(int)bob.getXspeed()));
    bob.setY((bob.getY()+(int)bob.getYspeed()));
    bob.accelerate(-.025);
  }
  if(sKey == false){
    bob.setX((bob.getX()+(int)bob.getXspeed()));
    bob.setY((bob.getY()+(int)bob.getYspeed()));
    bob.accelerate(0);
  }
}


public void keyPressed() {
  if (key == 'h') {
    bob.setXspeed(0);
    bob.setYspeed(0);
    bob.setX((int)(Math.random()*1000));
    bob.setY((int)(Math.random()*1000));
    bob.setPointDirection((int) (Math.random()*360));
  }
  if (key == 'a') {
    bob.turn(-10);
  }
  if (key == 'd') {
    bob.turn(10);
  }
  if (key == 'w') {
    wKey = true;
  }
  if (key == 's') {
    sKey = true;
  }
}

public void keyReleased() {
if (key == 'w') {wKey = false;}
if (key == 's') {sKey = false;}
exhaust = false;
}

