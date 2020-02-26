void touch(){

  stroke(204, 102, 0);
  strokeWeight(4);
  fill(0,0,0,0);
  if(pointCircle(mouseX, mouseY, 1330, 350, 195) && !pointCircle(mouseX, mouseY, 1330, 350, 50)){
  ellipse(mouseX, mouseY, 20, 20);
  positiomousepre[0]=mouseX;
  positiomousepre[1]=mouseY;
    random = false;
  } else {
  ellipse(positiomousepre[0], positiomousepre[1], 20, 20);
  }
}
