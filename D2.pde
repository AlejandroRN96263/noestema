class d2
{
  float x1;
  float y1;
  float h1;
  float w1;
  
  Body body;

  d2(float x1_, float y1_)
  {
    x1=x1_;
    y1=y1_;
    w1=10;
    h1=10;
    
    BodyDef cc = new BodyDef();
    cc.type = BodyType.DYNAMIC;
    cc.position.set(box2d.coordPixelsToWorld(x1,y1));
    body = box2d.createBody(cc);
    
    
    PolygonShape sd = new PolygonShape();
    float box2dW = box2d.scalarPixelsToWorld(w1/2);
    float box2dH = box2d.scalarPixelsToWorld(h1/2); 
    sd.setAsBox(box2dW, box2dH);     
    FixtureDef fd = new FixtureDef();

    fd.density = 1;
    fd.friction = 0.3;
    fd.restitution = 0.5;

                  
    body.createFixture(fd);
  }
  void display()
  {
    fill(0);
  ellipse(x1,350,w1,h1);
  }
}