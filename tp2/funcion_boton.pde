void BotonReinicio(){

if(mouseX>220&&mouseX<420&&mouseY>410&&mouseY<450){
fill(255,140,0);
}else{
fill(120);
}

rect(220,410,200,40);

fill(255);
textSize(25);
text("REINICIAR",250,440);

}
