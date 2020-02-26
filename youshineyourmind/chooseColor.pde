void nextColor(){
 image(img4, 1638, 695);
}

void backColor(){
  image(img3, 1043, 695);
}
void scroll(){
  PImage[] images_slide = {first, summer, autumn, sunflower, winter, test};

  if(mouseX >= 1030 && mouseX <=1700 && mouseY > 660 && mouseY <830 ){

    if(onclick-released  >= 20){
      image(images_slide[count],  1120, 695);
    }
    else if(onclick-released  <= -20 ){
      image(images_slide[count],  1120, 695);
    }
    else{
      image(images_slide[count],  1120, 695);
    }
  }
 
}
