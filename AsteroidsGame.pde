Spaceship bob = new Spaceship();
Star [] stars;
ArrayList <Asteroid> belt = new ArrayList <Asteroid>();
boolean wKey, sKey, exhaust;
boolean range = false;
int a;
int b;
ArrayList <Bullet>shots=new ArrayList<Bullet>();


public void setup() {
  background(0);
  size(1000, 1000);
  stars = new Star[200];
  for (int i =0; i < stars.length; i++) {
    stars[i] = new Star();
  }
  for (int j = 0; j < 25; j++) {

    a = (int)(Math.random()*7)+6;
    b = (int)(Math.random()*15)+3;

    Asteroid rocks = new Asteroid(a, b);
    belt.add(rocks);
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
  for (int i = 0; i < belt.size(); i++) {
    belt.get(i).move();
    belt.get(i).show();
    belt.get(i).setDistanceA( (int)dist(belt.get(i).getX(), belt.get(i).getY(), bob.getX(), bob.getY() ) );

    if (range == false && belt.get(i).getDistanceA() < 20) {
      belt.remove(belt.get(i));
      break;
    } else if (range == true  && belt.get(i).getDistanceA() < 90 ) {
      belt.remove(belt.get(i));
      break;
    }


    for (int k = 0; k < shots.size(); k++) {
      belt.get(i).setDistanceB((int)dist(belt.get(i).getX(), belt.get(i).getY(), shots.get(k).getX(), shots.get(k).getY() ) );
      if (range == false && belt.get(i).getDistanceB() < 30) {
        belt.remove(belt.get(i));
        shots.remove(shots.get(k));
        break;
      }
    }
  }

  for (int i = 0; i < shots.size(); i ++) {
    shots.get(i).show();
    shots.get(i).move();
  }

  if (belt.size() == 0) {
    background(0);
    textSize(100);
    text("VICTORY", 350, 500);
  }

  if (wKey == true) {
    bob.setX((bob.getX()+(int)bob.getXspeed()));
    bob.setY((bob.getY()+(int)bob.getYspeed()));
    bob.accelerate(.025);
    exhaust = true;
  }
  if (wKey == false) {
    bob.setX((bob.getX()+(int)bob.getXspeed()));
    bob.setY((bob.getY()+(int)bob.getYspeed()));
    bob.accelerate(0);
  }
  if (sKey == true) {
    bob.setX((bob.getX()+(int)bob.getXspeed()));
    bob.setY((bob.getY()+(int)bob.getYspeed()));
    bob.accelerate(-.025);
  }
  if (sKey == false) {
    bob.setX((bob.getX()+(int)bob.getXspeed()));
    bob.setY((bob.getY()+(int)bob.getYspeed()));
    bob.accelerate(0);
  }

  for (int i = 0; i<shots.size(); i++) {
    shots.get(i).move();
    shots.get(i).show();
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
  if (key=='f') {
    shots.add(new Bullet(bob));
  }
}

public void keyReleased() {
  if (key == 'w') {
    wKey = false;
  }
  if (key == 's') {
    sKey = false;
  }
  exhaust = false;
}
