boolean colorChange(boolean velueaction){
  // do something
  
  //println(velueaction);
   PShape[] patternsvg = {pattern1svg, pattern2svg, pattern3svg};
      patternsvg[count_pattern].enableStyle();
      noStroke();
      patternsvg[count_pattern].disableStyle();
       scale(1);
  if(velueaction == true){

     for (int i = 0; i < patternsvg[count_pattern].getChildCount(); i++)
     {
      
        ps = patternsvg[count_pattern].getChild(i);
        //fill(random(255), random(255), random(255));
        if(i != 0){
                tempcolor[i] = color(random(TWO_PI), random(10,100), random(50,100));
         shape(ps, 235, 206);
         //fill(tempcolor[i]);
        
        //println(tempcolor[i]);
       
        }else{
          tempcolor[i] = color(0,0,0);
        }
        temp[i] = ps;
      }
    random = true ;
     return false;
  }
  else if(velueaction == false){

     for(int i = 0; i < temp.length; i++){
  
       if(temp[i] != null){
        if( i == patternsvg[count_pattern].getChildCount()){
          return false;
        }
         ps = patternsvg[count_pattern].getChild(i);
         //println(tempcolor[i]);
         fill(tempcolor[i]);
         shape(ps, 235, 206);
             //println(temp[i]);
       }
     }
     //println("=================");
  }
   return false;
}
