// https://www.youtube.com/watch?v=Jgwiz1ofx0I
PImage img;
color colorBase = color(0); 
float miRotacion = 0.0;   //guarda parametros de rotacion

void setup() {
  size(800, 400); 
  noStroke();     
  
  img = loadImage("12.jpg"); 
}

void draw() {
  background(255); 
    image(img, 0, 0, 400, 400);
  
  pushMatrix(); // guarda estado actual
  translate(400, 0); // dibuja lado derecho
  
  // funcion q dibuja el patron
  dibujarReplica(miRotacion, colorBase);

  popMatrix(); // vuelve al estado original
}

//funcion propia que NO retorna valor //defino la funcion que hace el dibujo
void dibujarReplica(float angulo, color colorActual) {
 float posicionY = 400.0;
  
  // ciclo for. Empieza con 6 circulos y aumenta de 3 en 3 
  for (int cantidadCirculos = 6; posicionY > 0; cantidadCirculos += 3) {
    
    // calcula el espacio de los circulos, medidas
    float TamGrilla = calcularTamGrilla(cantidadCirculos, 400.0);
    float centroY = posicionY - (TamGrilla / 2.0); // centra el circulo en su fila
    float diametroCirculo = TamGrilla * 0.9; // dejo espacio entre circulos (90%)
    
    // acomoda los circulos en su lugar
    for (int i = 0; i < cantidadCirculos; i++) {
      float centroX = (i * TamGrilla) + (TamGrilla / 2.0);
      
      // mide la distancia entre el mouse y el centro de cada circulo
      float distancia = dist(mouseX - 400, mouseY, centroX, centroY);
      
      pushMatrix(); //guardoi estado actual
      translate(centroX, centroY); // paso el origen al centro del círculo 
      
      // si elk mouse esta cerca (menos de 25) cambia color
      if (distancia < 25) {
        fill(255, 0, 0); //ROJO
        
        // map convierte el rango de distancia asignado en una rotacion
        // si la distancia es 0, gira 3.0 (media vuelta), si es 25 gira a 0
        float giroExtra = map(distancia, 0, 25, 3.0, 0);
        rotate(angulo + giroExtra); // rota cuando se acerca el mouse
        
        rectMode(CENTER); // se dibuja cuadrado en la rotacion
        rect(0, 0, diametroCirculo, diametroCirculo);
      } else { // si no, vuelve al color actual y se dibuja el circulo
        fill(colorActual); 
        rotate(angulo);    
        ellipse(0, 0, diametroCirculo, diametroCirculo); 
      }
      
      popMatrix(); //vuelvo
    }
    posicionY -= TamGrilla; // subo a la siguiente fila
  }
}


// funcion propia que retorna un valor
//return devuelve el resultado
float calcularTamGrilla(int cantidad, float anchoTotal) {
  return anchoTotal / cantidad; // divide ancho x cantidas para que los circulos encajen
}

// al presionar el mouse, se genera un color random y rota
void mousePressed() {
  colorBase = color(random(255), random(255), random(255)); 
  miRotacion += 0.26; // 0.26es aprox 15 grados. Se suman a la rotacion de la figura
}

// reinicio con r o R
void keyPressed() {
  if (key == 'r' || key == 'R') {
    colorBase = color(0); 
    miRotacion = 0.0;   
    //vuelvo al color y la posicion inicial
 }

}
