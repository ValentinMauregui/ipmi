PImage miImagen;

void setup() {
  size(800, 400);
  background(255);
  miImagen = loadImage("LaTrinidad.jpg");
  
}

void draw() {
  
  image(miImagen, 0, 0, 400, 400);

  // coordenadas

  println("X:");
  println(mouseX);
  println("Y:");
  println(mouseY);

  //fondo

  stroke(175, 135, 115);
  fill(175, 135, 115);
  rect(430, 26, 370, 26);
  fill(175, 135, 115);
  stroke(175, 135, 115);
  rect(430, 26, 30, 350);
  rect(740, 26, 40, 370);
  fill(155, 135, 115);
  stroke(130, 115, 100);
  rect(460, 50, 50, 50);
  rect(690, 50, 50, 50);
  fill(116, 85, 65);
  stroke(116, 85, 65);
  ellipse(600, 140, 300, 220);
  rect(450, 150, 300, 400);

  //fondo arco

  fill(65, 75, 70);
  stroke(65, 75, 70);
  ellipse(600, 160, 250, 220);
  rect(475, 150, 250, 400);


  //lineas y cruz

  fill(105, 70, 5);
  stroke(105, 70, 5);
  line(400, 0, 400, 400);
  rect(580, 40, 40, 350);
  rect(490, 80, 218, 40);
  fill(85, 55, 8);
  stroke(85, 55, 8);
  rect(496, 85, 205, 30);
  rect(585, 46, 30, 298);

  // escenografia (?)

  fill(85, 55, 8);
  rect(400, 370, 400, 40);
  rect(400, 350, 340, 30);
  fill(205, 175, 150);
  stroke(205, 175, 150);
  rect(400, 0, 400, 25);
  rect(400, 26, 30, 350);
  rect(770, 0, 30, 380);
  fill(75, 47, 8);
  stroke(70, 40, 4);
  rect(500, 380, 200, 20);
  rect(525, 350, 150, 20);
  line(500, 380, 525, 370);
  line(700, 380, 675, 370);


  // cuerpo jesus (cabeza)

  fill(50);
  stroke(50);
  circle(600, 100, 30);
  fill(255, 228, 185);
  stroke(255, 228, 185);
  circle(600, 107, 30);

  // Nuevo cuerpo
  strokeWeight(25);
  line(600, 122, 600, 180);
  //brazo izq
  strokeWeight(10);
  line(540, 110, 588, 130);
  //brazo der
  line(660, 110, 610, 130);
  // pierna izq
  line(595, 186, 590, 245);
  line(605, 186, 610, 245);
  strokeWeight(1);

  //ropa interior
  fill(200);
  stroke(200);
  rect(587, 170, 26, 36);

  // abdominales

  fill(10);
  line(600, 145, 600, 175);
  line(590, 155, 610, 155);
  line(590, 165, 610, 165);
  textSize(10);
  text(".", 592, 135);
  text(".", 607, 135);

  // ojos

  textSize(10);
  text("X", 590, 110);
  text("X", 605, 110);

  // boca

  fill(0);
  stroke(0);
  line(595, 115, 605, 115);

  // monja 1

  fill(162, 16, 16);
  stroke(162, 16, 16);
  ellipse(448, 370, 60, 80);
  fill(255, 228, 185);
  stroke(70);
  circle(470, 318, 8);
  ellipse(455, 320, 30, 40);
  fill(162, 16, 16);
  stroke(162, 16, 16);
  ellipse(450, 320, 20, 40);
  fill(96, 7, 7);
  textSize(60);
  text("(", 414, 385);
  textSize(30);
  text("(", 438, 327);
  fill(0);
  textSize(13);
  text("^", 461, 318);
  fill(255, 228, 185);
  stroke(255, 228, 185);
  circle(470, 366, 10);

  // monja 2

  fill(20, 106, 60);
  stroke(20, 106, 60);
  ellipse(750, 370, 60, 80);
  fill(255, 228, 185);
  stroke(70);
  circle(735, 318, 8);
  ellipse(750, 320, 30, 40);
  fill(20, 106, 60);
  stroke(20, 106, 60);
  ellipse(755, 320, 20, 40);
  fill(11, 60, 34);
  textSize(60);
  text(")", 766, 385);
  textSize(30);
  text(")", 759, 327);
  fill(0);
  textSize(13);
  text("^", 738, 318);
  fill(255, 228, 185);
  stroke(255, 228, 185);
  circle(730, 366, 10);
}
