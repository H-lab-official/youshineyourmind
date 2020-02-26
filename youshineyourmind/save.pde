void savePicture(){
  // do something
    
  PGraphics pg;
  PImage bg;
  
  //BufferedReader reader = createReader("data/count.txt");
  //String line = null;
  PrintWriter output;
  String[] tempcount = {"0"};
  String temp;
  //try {
    String[] lines = loadStrings("data/count.txt");
    for (int i = 0 ; i < lines.length; i++) {
      tempcount[i]=lines[i];
    }
    temp =join(tempcount,"");
    output = createWriter("data/count.txt");
    countuser = int(temp);
    //count =  int(temp);
    countuser = countuser+1;
    output.println(countuser);
    output.flush();
    output.close();
    //output = createWriter("data/count.txt");
    //output.println(countuser);
    //while ((line = reader.readLine()) != null) {
    // output = createWriter("data/count.txt");
     
    // countuser = int(line)+1;
    // //print(countuser);
    // output.println(countuser);
    //  output.flush();
    //  output.close();
    //}
  //  reader.close();
  //} catch (IOException e) {
  //  e.printStackTrace();
  //}
  PShape[] patternsvg = {pattern1svg, pattern2svg, pattern3svg};
  float rr=0,gg=0,bb=0;
  float[] p0 ={0.0, 0.1, 0.1, 0.4, 0.3, 0.1};
  float[] p1 ={0.0, 0.15, 0.15, 0.1, 0.15, 0.15, 0.2, 0.1};
  float[] p2 ={0.0, 0.3, 0.1, 0.4, 0.1, 0.1};
  for(int i = 0; i < patternsvg[count_pattern].getChildCount(); i++){
      ps = patternsvg[count_pattern].getChild(i);
      if(i>=1){ 
        if(count_pattern ==0){
           rr = rr+red(tempcolor[i])*p0[i];
           gg = gg+green(tempcolor[i])*p0[i];
           bb = bb+blue(tempcolor[i])*p0[i];
        }else if(count_pattern ==1){
           rr = rr+red(tempcolor[i])*p1[i];
           gg = gg+green(tempcolor[i])*p1[i];
           bb = bb+blue(tempcolor[i])*p1[i];
        }else if(count_pattern ==2){
           rr = rr+red(tempcolor[i])*p2[i];
            gg = gg+green(tempcolor[i])*p2[i];
            bb = bb+blue(tempcolor[i])*p2[i];
        }
        //rr = rr+red(tempcolor[i]);
        //gg = gg+green(tempcolor[i]);
        //bb = bb+blue(tempcolor[i]);
      }
  }
  rr = map(rr, 0, TWO_PI, 0, 255);
  gg = map(gg, 0, 100, 0, 255);
  bb = map(bb, 0, 100, 0, 255);
  
  PVector xccompare = new PVector(rr,gg,bb);
  float minV=255; 
  int indexPIC=1;
  for(int i=0;i<=7;i++){
    float dis = CCC[i].dist(xccompare);
    if(minV > dis ) { 
      minV = dis;
      indexPIC = i+1;
    }
  }

  if(indexPIC == 8){
      rr=0;
      gg=0;
      bb=0;
    
      for(int i = 0; i < patternsvg[count_pattern].getChildCount(); i++){
        ps = patternsvg[count_pattern].getChild(i);
        if(i>=1){ 
          if(count_pattern == 0){
            if(i==3 ){

           rr = rr+red(tempcolor[i]);
           gg = gg+green(tempcolor[i]);
           bb = bb+blue(tempcolor[i]);
           
            }
          }else if(count_pattern == 1){
              if(i == 6){
           rr = rr+red(tempcolor[i]);
           gg = gg+green(tempcolor[i]);
           bb = bb+blue(tempcolor[i]);
              }
          }else if(count_pattern ==2){
            if(i == 3){
           rr = rr+red(tempcolor[i]);
           gg = gg+green(tempcolor[i]);
           bb = bb+blue(tempcolor[i]);
            }
        }  
      }
   }
   rr = map(rr, 0, TWO_PI, 0, 255);
  gg = map(gg, 0, 100, 0, 255);
  bb = map(bb, 0, 100, 0, 255);
   xccompare = new PVector(rr,gg,bb);

  minV=255.00; 
  indexPIC=1;
  for(int i=0;i<=7;i++){
    float dis = CCC[i].dist(xccompare);

    if(minV < dis ) { 
      minV = dis;

      indexPIC = i+1;

    }
  }
 
  }
  bg = loadImage("c"+indexPIC+".jpg");
  pg = createGraphics(1239, 1749);
  
  //String folder = "fill Path";
  //String filename = "file name";
  
  pg.beginDraw();
  pg.image(bg,0,0);
  pg.scale(1.19);
  pg.noStroke();
  for(int i = 0; i < patternsvg[count_pattern].getChildCount(); i++){
      ps = patternsvg[count_pattern].getChild(i);
      pg.fill(tempcolor[i]);
      pg.shape( ps ,190,81);
  }
  pg.textSize(40);
  pg.fill(0,0,0);
  pg.textFont(font, 30);
  pg.text("#"+countuser,50,50);
  pg.endDraw();
  //image(pg, 50, 50); 
  pg.save("C:/Users/user/Desktop/PrintOut/printttt/"+countuser+"test.png");
  movetoend = false;
  run_firsttime = true;
  
  
  
  if(saverun){
          int rand = (int)random(setofRAN2.length);
          myBus.sendNoteOn(setofRAN2[rand],setofRAN2[rand],setofRAN2[rand]);

          run_firsttime =true;
          run_firsttimeinterface = true;
          saverun = false;
        }
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  //color temp;
  //int[] layer;
  //int count=1;
  //int red=0, pink=0, violet=0, blue=0, green=0, yellow=0, orangnce=0;
  //IntDict inventory;
 //inventory = new IntDict();
  //println("color : " + tempcolor+ "Picture : "+ count_pattern);
  //for(int i = 0 ; i< tempcolor.length; i++){
  //  println( tempcolor[i]);
  //  temp = tempcolor[i];
  //    //for(int j = 0 ; j< tempcolor.length; j++){
  //      if(temp >= -1441792 && temp <= -1429248){
  //         println("red") ;
  //         inventory.set("red", red++);
  //      }else if(temp >= -1441792 && temp <= -1441792){
  //        println("pink");
  //        inventory.set("pink", pink++);
  //      }else if(temp >= -1441792 && temp <= -1441792){
  //        println("violet");
  //        inventory.set("violet", violet++);
  //      }else if(temp >= -1441792 && temp <= -1441792){
  //        println("blue");
  //        inventory.set("blue", blue++);
  //      }else if(temp >= -1441792 && temp <= -1441792){
  //        println("green");
  //        inventory.set("green", green++);
  //      }else if(temp >= -1441792 && temp <= -1441792){
  //        println("yellow");
  //        inventory.set("yellow", yellow++);
  //      }else if(temp >= -1441792 && temp <= -1441792){
  //        println("orangnce");
  //        inventory.set("orangnce", orangnce++);
  //      }
  //  count = 0;
  //}
}


void movieEvent(Movie m) {
  m.read();
} 
