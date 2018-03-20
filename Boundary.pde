//
class plataforma
{
  float ex;
  float ey;
  float al;
  float an;
  
  Body p;
  
  plataforma(float ex_, float ey_,float al_, float an_)
  { 
    ex=ex_;
    ey=ey_;
    al=al_;
    an=an_;
    
    PolygonShape sd = new PolygonShape();
    float box2dW = box2d.scalarPixelsToWorld(an/2);
    float box2dH = box2d.scalarPixelsToWorld(al/2);
   
    sd.setAsBox(box2dW, box2dH);
    
    BodyDef bd = new BodyDef();
    bd.type = BodyType.STATIC;
    bd.position.set(box2d.coordPixelsToWorld(ex,ey));
    p = box2d.createBody(bd);
    
    // Attached the shape to the body using a Fixture
    p.createFixture(sd,1);
  }
  void cuadro()
  {
  fill(255,255,122);
  noStroke();
  rectMode(CENTER);
  rect(ex,ey,an,al);
  }
}