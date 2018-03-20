class d1
{
  float x;
  float y;
  float h;
  float w;
  
  Body body;

  d1(float x_, float y_)
  {
    x=x_;
    y=y_;
    w=10;
    h=10;
    
    BodyDef cc = new BodyDef();
    cc.type = BodyType.DYNAMIC;
    cc.position.set(box2d.coordPixelsToWorld(x,y));
    body = box2d.createBody(cc);
    
    
    PolygonShape sd = new PolygonShape();
    float box2dW = box2d.scalarPixelsToWorld(w/2);
    float box2dH = box2d.scalarPixelsToWorld(h/2); 
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
  ellipse(x,y,w,h);
  }
}