//--intento (que seguramente fallará) 2---------------------------------------------//

/*
 
 --------------------elementos de B2d-------------------------------------------------

° World-> Administra la simulación de la física
--conoce todo sobre el conjunto de coordenadas en el espacio
--y tambien almacenas lista de todos los elementos en el mundo

° Body-> Sirve como elemento primario en el mundo de B2D esto 
tiene una locación, esto tiene una velocidad, ¿suena familiar? 
el BODY es escencialmente la clase que hemos estado escribiento
por nuestra propia cuenta en nuestros vectores y ejemplos de la
fuerza

° Shape-> realiza un seguimiento de toda la geometría de colisión 
necesaria unida a un cuerpo.

°Fixture-> Agrega una forma a un cuerpo y establece propiedades
tales como densidad, fricción y restitución.

° joint-> Conjunto: actúa como una conexión entre dos cuerpos 
(o entre un cuerpo y el mundo mismo).

° Vec2: describe un bector en el mundo de box2D
*/

//ssseeenntonceesss.....
//importación de librerias
//no se que voy hacer :B pero mi monito tiene que desplazarse y desplomarse :/----//
//import
import shiffman.box2d.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;
import org.jbox2d.dynamics.joints.*;
import org.jbox2d.collision.shapes.Shape;
import org.jbox2d.dynamics.contacts.*;

//Variables Univ
float v;
float v1;
float g = 9.8;
PImage escenario;


Box2DProcessing box2d; 
ArrayList<plataforma> esc;
ArrayList<d2>part;
ArrayList<d1>parr;
void setup()
{
  size(400,400);
  escenario = loadImage("BG1.jpg");
  box2d = new Box2DProcessing(this);  
  box2d.createWorld();
  esc = new ArrayList<plataforma>();    //ultimo valor, anchura
   esc.add(new plataforma(-80,height-320,10,height));
   esc.add(new plataforma(width/2.6,height-220,10,height/2));
   esc.add(new plataforma(340,height-105,10,height/2));
   esc.add(new plataforma(width/80,height-200,width,10));
   esc.add(new plataforma(width-5,height-200,width,10));
   esc.add(new plataforma(width/2,height-4,10,height));
}


void draw()
{
  
  background(255);
  tint(255,200);
  image(escenario,0,0,400,400);
  fill(255,0,0);
  text("presiona A para aumentar la gravedad",150,60);
  box2d.step();
  for (plataforma wall: esc)
  {
    wall.cuadro();
  }
 
 
 
 
 println(g);
 
 salir();
 
}