void setup(){
  size(64,64); 
}

void draw(){
  for (int i = 0; i < 3; i++){    
    background(255);   
    pushMatrix();
    strokeWeight(3);
    float r = random(5,20);
    float x = random(r, width - r);
    float y = random(r, height - r);
    translate(x, y);  
    if (i == 0) {  
      circle(0,0, r*2);
      saveFrame("data/circle_###.png");
    } else if (i == 1) {
      rectMode(CENTER);
      rotate(random(-0.1,0.1));
      square(0,0,r*2);
      saveFrame("data/square_###.png");
    } else if (i == 2) {
      rotate(random(-0.1,0.1));
      triangle(0,-r,r,r,-r,r); 
      saveFrame("data/triangle_###.png");  
    }
    popMatrix();   
  }
  if (frameCount == 30){
    exit();
  }
}
