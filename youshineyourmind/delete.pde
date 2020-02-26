void delect(){
  // do something
     int count = 0;
     PShape[] patternsvg = {pattern1svg, pattern2svg, pattern3svg};

      patternsvg[count_pattern].disableStyle();
       scale(1);
       noStroke();
 for (int i = 0; i < patternsvg[count_pattern].getChildCount(); i++)
         {
        ps = patternsvg[count_pattern].getChild(i);
        if(i==0){
        fill(1, 0, 0);
        tempcolor[i] = color(1, 0, 0);
            shape(ps, 235, 206);
        temp[i] = ps;
         //fill(tempcolor[i]);
       //fill(tempcolor[i]);
        } // border
      
        else{

           tempcolor[i] = -4098-count;
           //println(tempcolor[i]);
        //tempcolor[i] = color(0, 0, 100);
      //println(tempcolor[i]);
           shape(ps, 235, 206);
        temp[i] = ps;
        count++;
           //fill(tempcolor[i]);
          //fill(0,0,100);

        }
}
}
