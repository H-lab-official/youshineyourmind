void ass_color(color c){
  color temp, temp_1;
  int count = 0;
  int count_1 = 0;
  
  PShape[] patternsvg = {pattern1svg, pattern2svg, pattern3svg};
  for(int i = 0; i < patternsvg[count_pattern].getChildCount(); i++){
     temp = tempcolor[i];  
    for(int j = 0; j < patternsvg[count_pattern].getChildCount(); j++){
        if(temp == tempcolor[j] && i != j){
          count++;
            tempcolor[i] = tempcolor[i]+count;
        }
    }

    if(c == tempcolor[i] && i != 0){
      tempcolor[i] = tempColor;
      colorloop(c);
    } 
  }
  for(int i=0; i<=4; i++){
      if(counthistory <= 4 ){
          if(counthistory == i ){
           historycolor[i]= tempColor;
 }
       }else{
       //for(int j=0; j<=4;j++){
       //          if(j!=0){
         if(i > 0){
           historycolor[i-1]= historycolor[i];
      
          historycolor[i] =tempColor;
                    
       //          }
       //}
  }
}
counthistory++;
}
}

void colorloop(color c){
  color temp;
  int count = 0;
  PShape[] patternsvg = {pattern1svg, pattern2svg, pattern3svg};

  for(int i = 0; i < patternsvg[count_pattern].getChildCount(); i++){
    temp = tempcolor[i];
    //println(tempcolor[i]);
    for(int j = 0; j < patternsvg[count_pattern].getChildCount(); j++){
      if(temp == c && i != j){
        tempcolor[j] = tempcolor[j]+count;
         count++;
       
      }
      count =0;
    }
     
  }

}


void clearcolor(){
  PShape[] patternsvg = {pattern1svg, pattern2svg, pattern3svg};
  for(int i = 0; i < patternsvg[count_pattern].getChildCount(); i++){
  
    
  }

}
