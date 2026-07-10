PImage imagen1, imagen2, imagen3, imagen4, imagen5, imagen6, imagen7, imagen8;

int posTextoGoku=500;
int posImagenGoku=-360;
int posTextoFreezer=500;
int posImagenFreezer=-360;
int posTextoGokuLlega=500;
int posImagenGokuLlega=-360;
int posTextoPiccolo=500;
int posImagenPiccolo=-360;
int posTextoKrillin=500;
int posImagenKrillin=-360;
int posTextoSSJ=500;
int posImagenSSJ=-360;
int posTextoFinal=500;
int posImagenFinal=-360;

PFont fuente;
int pantalla=0;

void setup(){

size(640,480);

imagen1=loadImage("goku capsula.jpg");
imagen2=loadImage("freezer domina.jpg");
imagen3=loadImage("goku llega.jpg");
imagen4=loadImage("piccolo muere.jpg");
imagen5=loadImage("krillin muere.jpg");
imagen6=loadImage("goku sjj.jpg");
imagen7=loadImage("goku gana.jpg");
imagen8=loadImage("boton reiniciar.jpg");

fuente=createFont("Arial Black",30);
textFont(fuente);

}

void draw(){

background(0);

actualizarPantalla();

if(pantalla==0){
pantallaGoku();
}

if(pantalla==1){
pantallaFreezer();
}

if(pantalla==2){
pantallaGokuLlega();
}

if(pantalla==3){
pantallaPiccolo();
}

if(pantalla==4){
pantallaKrillin();
}

if(pantalla==5){
pantallaSSJ();
}

if(pantalla==6){
pantallaFinal();
}

if(pantalla==7){
pantallaReinicio();
}

}

void actualizarPantalla(){

if(frameCount>300){
pantalla=1;
}

if(frameCount>600){
pantalla=2;
}

if(frameCount>900){
pantalla=3;
}

if(frameCount>1200){
pantalla=4;
}

if(frameCount>1500){
pantalla=5;
}

if(frameCount>1800){
pantalla=6;
}

if(frameCount>2100){
pantalla=7;
}

}

void pantallaGoku(){

if(posImagenGoku<40){
posImagenGoku=posImagenGoku+5;
}

image(imagen1,50,posImagenGoku,535,360);

if(posTextoGoku>430){
posTextoGoku=posTextoGoku-1;
}

fill(255);
textSize(27);
text("GOKU SE RECUPERA EN LA CÁPSULA",36,posTextoGoku);
text("INCREMENTANDO SU PODER",100,posTextoGoku+30);

}

void pantallaFreezer(){

if(posImagenFreezer<40){
posImagenFreezer=posImagenFreezer+5;
}

image(imagen2,50,posImagenFreezer,535,360);

if(posTextoFreezer>430){
posTextoFreezer=posTextoFreezer-1;
}

fill(255);
textSize(27);
text("MIENTRAS GOKU SE RECUPERA,",75,posTextoFreezer);
text("FREEZER DESTRUYE EL PLANETA",65,posTextoFreezer+30);

}

void pantallaGokuLlega(){

if(posImagenGokuLlega<40){
posImagenGokuLlega=posImagenGokuLlega+5;
}

image(imagen3,50,posImagenGokuLlega,535,360);

if(posTextoGokuLlega>430){
posTextoGokuLlega=posTextoGokuLlega-1;
}

fill(255);
textSize(27);
text("GOKU ROMPE LA CÁPSULA Y VUELA",45,posTextoGokuLlega);
text("RÁPIDAMENTE DONDE ESTA FREEZER",36,posTextoGokuLlega+30);

}

void pantallaPiccolo(){

if(posImagenPiccolo<40){
posImagenPiccolo=posImagenPiccolo+5;
}

image(imagen4,50,posImagenPiccolo,535,360);

if(posTextoPiccolo>430){
posTextoPiccolo=posTextoPiccolo-1;
}

fill(255);
textSize(27);
text("PICCOLO INTENTA AYUDAR",110,posTextoPiccolo);
text("PERO ES DERROTADO POR FREEZER",45,posTextoPiccolo+30);

}

void pantallaKrillin(){

if(posImagenKrillin<40){
posImagenKrillin=posImagenKrillin+5;
}

image(imagen5,50,posImagenKrillin,535,360);

if(posTextoKrillin>430){
posTextoKrillin=posTextoKrillin-1;
}

fill(255);
textSize(27);
text("KRILLIN QUIERE ESCAPAR,",115,posTextoKrillin);
text("PERO MUERE, COMO SIEMPRE",90,posTextoKrillin+30);

}

void pantallaSSJ(){

if(posImagenSSJ<40){
posImagenSSJ=posImagenSSJ+5;
}

image(imagen6,50,posImagenSSJ,535,360);

if(posTextoSSJ>430){
posTextoSSJ=posTextoSSJ-1;
}

fill(255);
textSize(27);
text("SU IRA INTERNA DESPIERTA SU PODER",20,posTextoSSJ);
text("Y SE TRANSFORMA EN SSJ",110,posTextoSSJ+30);

}

void pantallaFinal(){

if(posImagenFinal<40){
posImagenFinal=posImagenFinal+5;
}

image(imagen7,50,posImagenFinal,535,360);

if(posTextoFinal>430){
posTextoFinal=posTextoFinal-1;
}

fill(255);
textSize(27);
text("TRAS UNA LARGA BATALLA, GOKU",57,posTextoFinal);
text("DESTRUYE A FREEZER Y VUELVE A CASA",10,posTextoFinal+30);

}

void pantallaReinicio(){

if(posImagenFinal<40){
posImagenFinal=posImagenFinal+5;
}

image(imagen8,50,posImagenFinal,535,360);

BotonReinicio();

}

void mousePressed(){

if(pantalla==7){

if(mouseX>220){
if(mouseX<420){
if(mouseY>410){
if(mouseY<450){

pantalla=0;

posTextoGoku=500;
posImagenGoku=-360;

posTextoFreezer=500;
posImagenFreezer=-360;

posTextoGokuLlega=500;
posImagenGokuLlega=-360;

posTextoPiccolo=500;
posImagenPiccolo=-360;

posTextoKrillin=500;
posImagenKrillin=-360;

posTextoSSJ=500;
posImagenSSJ=-360;

posTextoFinal=500;
posImagenFinal=-360;

frameCount=0;

}
}
}
}

}

}
