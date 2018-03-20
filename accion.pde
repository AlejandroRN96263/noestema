void keyPressed()
{
  if(key=='a'||key=='A')
  {
    g++;
  }
}

void salir()
{
  if(g==30.8)
  {
    frameRate(0.5);
    fill(0);
    text("Es demaciado peso para nuestra pequeña figura :B Bye!!!",70,200);
    exit();
  }
}