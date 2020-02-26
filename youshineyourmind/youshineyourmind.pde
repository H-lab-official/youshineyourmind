  PImage img,img2,img3,img4,img5,img6,img7,img8,img9,img10,img11,img12, first, summer, autumn, sunflower, winter, test, pattern1, pattern2, pattern3, newphoto, printoutput, showlast;
  PShape pattern1svg, pattern2svg, pattern3svg, tempsvg;
  PGraphics pgr;
  PVector[] CCC = new PVector[9];
  import spout.*;
  import controlP5.*;
  import javax.swing.*;
  import themidibus.*; //Import the library
  import processing.video.*;
  import java.awt.Robot;
  import java.awt.event.InputEvent;
  MidiBus myBus; // The MidiBus
  Spout spout;
  Robot robby;
  int counthistory=0;
  int[] setofRAN1 = {10,11,12};
  int[] setofRAN2 = {30,31,32};
  int distance=0;
  color[] historycolor = new color[5];
  int triggerx = 20;
  Movie myMovie;
  ControlP5 cp5;
  PFont font;
  int countuser;
  int sliderTicks1 = 100;
  int[] positionvalue_circle = {(1920/2)+370,1080/2-190};
  int onclick;
  int released;
  int count = 0;
  int scroll;
  int tempColor = -1;
  int time;
  int timemer;
  int waitattheend = 60000;
  int notouch15min = 900000;
  color[] tempcolor=new color[10];
  color[] treetemcolor=new color[3];
  int count_pattern = 0;
  boolean random = false;
  //PShape[] temp[10];
  PShape[] temp = new PShape[10];
  int[] positiomousepre = {0,0};
  ArrayList fillrandome = new ArrayList() ;
  PShape ps;
  boolean submit = true;
  boolean clickopening = false;
  boolean movetoend = true;
  boolean flag=true;
  boolean chekfirstime = true;
  boolean run_firsttime = true;
  boolean run_firsttimeinterface = true;
  boolean saverun = true;
void setup() {

   fullScreen(P3D);
   //noCursor();
  //frameRate(60);
  textureMode(NORMAL);
  submit = true;
  MidiBus.list();
  myMovie = new Movie(this, "touchME.mp4");
  myMovie.loop();
  myBus = new MidiBus(this, -1, "hlab");
  font = loadFont("MicrosoftYaHeiUI-48.vlw");
  CCC[0] =new PVector(255,0,0); //"RED" 1
  CCC[1] =new PVector(255,128,0); // ORANGE 2
  CCC[2] =new PVector(255,255,0); // YELLOW 3
  CCC[3] =new PVector(0,255,0); // GREEN 4
  CCC[4] =new PVector(0,0,255); // BLUE 5
  CCC[5] =new PVector(128,0,128); // VIOLET 6
  CCC[6] =new PVector(255,20,147); // PINK 7 
  CCC[7] =new PVector(139,69,19); // BROWN 8
  
  pgr = createGraphics(1000, 1000, P3D);
  spout = new Spout(this);
  spout.createSender("Spout H-lab");
  
  img = loadImage("1.png");
  img2 = loadImage("2.png");
  img3 = loadImage("3.png");
  img4 = loadImage("4.png");
  img5 = loadImage("5.png");
  img6 = loadImage("6.png");
  img7 = loadImage("7.png");
  img8 = loadImage("8.png");
  img9 = loadImage("9.png");
  img10 = loadImage("10.png");
  
  first = loadImage("first.png");
  summer = loadImage("summer.png");
  autumn = loadImage("autumn.png");
  sunflower = loadImage("sunflower.png");
  winter = loadImage("winter.png");
  test = loadImage("test.png");
  sunflower = loadImage("sunflower.png");
  showlast = loadImage("screen.png");
  pattern1 = loadImage("pattern1.png");
  pattern1svg = loadShape("pattern1.svg");
  pattern1.resize(650, 650); // resize pattern 1
  
  pattern2 = loadImage("pattern2.png");
  pattern2svg = loadShape("pattern2.svg");
  pattern2.resize(650, 650); // resize pattern 2
  
  pattern3 = loadImage("pattern3.png");
  pattern3svg = loadShape("pattern3.svg");
  pattern3.resize(650, 650); // resize pattern 3
  CColor c = new CColor();
 
  c.setBackground(color(150,150,150));
  c.setForeground(color(0,0,0));

 smooth();
 cp5 = new ControlP5(this);
 PImage[] xclear = {loadImage("5.png"),loadImage("5.png"),loadImage("10.png")};
 PImage[] random = {loadImage("6.png"),loadImage("9.png"),loadImage("6.png")};
 PImage[] play = {loadImage("7.png"),loadImage("8.png"),loadImage("7.png")};

   cp5.addBang("xclear")
     .setValue(128)
     .setTriggerEvent(Bang.RELEASE)
     .setPosition(1150, 884)
     .setImages(xclear)
     .updateSize();
     ;
   cp5.addButton("random")
     .setValue(128)
     .setPosition(1340, 884)
     .setImages(random)
     .updateSize();
     ;
   cp5.addButton("play")
     .setValue(128)
     .setPosition(1528, 884)
     .setImages(play)
     .updateSize();
     ;
 cp5.addSlider("sliderTicks1")
     .setPosition(width/2+670,170)
     .setSize(60,400)
     .setRange(0,255)
     .setColor(c)
     .setColorActive(1)
     .setSliderMode(0)

     //.setColorForeground(1)
     .setLabelVisible(false)
     .setHandleSize(50)
     //.setImages(imgs)
     //.updateSize();
     ;

  colorMode(HSB, TWO_PI,100,100);

}
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////DRAW
void draw(){
  if(clickopening && movetoend ){
  if(run_firsttimeinterface==true){
    myBus.sendNoteOn(20,20,20);
    run_firsttimeinterface = false;
    saverun = true;
  }
    
    
    
    
  cp5.show();
  background(0,0,100);
  fill(0,0,50);
  noStroke();
  rect(170, 90, 800, 900, 60, 60, 60, 60);
  rect(1020, 90, 730, 550, 60, 60, 60, 60);
  rect(1020, 665, 730, 180, 55, 55, 55, 55);
  rect(1020, 870, 730, 118, 40, 40, 40, 40);
 image(img, 353, 80);
 image(img2, 353, 895);
  
 PImage[] images_slide = {first, summer, autumn, sunflower, winter, test}; // Array color
 image(images_slide[count],  1120, 695); // dispaly color
 
 strokeWeight(2);
 
 translate( positionvalue_circle[0], positionvalue_circle[1]);
 for ( float c = 0; c <= TWO_PI; c +=0.005 ) {
   push();
   rotate(c);
   strokeWeight(5);
   float val = map(sliderTicks1,0,255,0,100);
   if(val>=50.0){
     //fill(val, map(sliderTicks1,0,255,-100,90));
     stroke(c,map(val,50,100,100,50), 100);
   }

   else {
     stroke(c,map(val,50,100,100,0),map(val,50,0,100,50));
   }
   
   
   //stroke(c,100,100);
   line(5,0,200,0);
   pop();
 }

     color g = get(mouseX, mouseY);
     if(g != -1 &&  g != -8421505 && g !=-6715787 && g != -1644826){
       fill(get(mouseX, mouseY));
       tempColor = get(mouseX, mouseY);

     }else {
       fill(tempColor);
     }
     //println(tempColor); 
     //println(get(mouseX, mouseY));
     strokeWeight(10);
     translate(0,0,1);
     circle(0,0,100);
     translate(0,0,-1);
     translate(  -positionvalue_circle[0], -positionvalue_circle[1]);
    
     //PImage[] pattern = {pattern1, pattern2, pattern3}; // Array pattern
     PShape[] patternsvg = {pattern1svg, pattern2svg, pattern3svg};
     patternsvg[count_pattern].enableStyle();

      
      patternsvg[count_pattern].disableStyle();
       scale(1);
       fill(100,0,0);
      noStroke();
      if(random == false){
        for (int i = 0; i < patternsvg[count_pattern].getChildCount(); i++)
         {
        ps = patternsvg[count_pattern].getChild(i);
        if(i==0){
        fill(1, 0, 0);
         //fill(tempcolor[i]);
       //fill(tempcolor[i]);
        } // border
            
        else{

           fill(tempcolor[i]);
        }
         

       shape(ps, 235, 206);

        }
      }
      else{
        colorChange(false);
      }

      nextColor();
      backColor();
      touch();
      
      if(millis() - timemer >= notouch15min){
        clickopening=false;
        run_firsttime = true;
        run_firsttimeinterface = true;
        saverun = true;
        delect();
      }
      
      
      
      
 }

  //myBus.sendNoteOn(11, 64, 127); // Send a Midi noteOn
  //myBus.sendNoteOff(11, 64, 127); // Send a Midi nodeOff


      if(!clickopening){
        image(myMovie, 0, 0); cp5.hide();
        if(run_firsttime){
          int rand = (int)random(setofRAN1.length);
          myBus.sendNoteOn(setofRAN1[rand],setofRAN1[rand],setofRAN1[rand]);
        
          run_firsttime =false;
          run_firsttimeinterface = true;
          saverun = true;
        }
      }
      if(!movetoend) {
        if(flag) { 
          //delect();
          time = millis(); flag=false;}
        image(showlast, 0, 0);
        fill(0,0,100);
        textFont(font, 120);
        text("# "+countuser,1188,564);
        cp5.hide();
        run_firsttime =true;
        if(millis() - time >= waitattheend || keyPressed == true){
          flag = true;
          movetoend = true;
          run_firsttimeinterface = true;
          saverun = true;
          delect();
        }
        
 
      }
      distance =0;
      if(chekfirstime){delect(); chekfirstime=false; saverun = true;}
     // for(int i=0; i<=4; i++){
     //    strokeWeight(4);
     //translate(0,0,1);
     //fill(historycolor[i]);
     //noStroke();
     //circle(1200+distance,600,50);
     //translate(0,0,-1);
     //distance = distance+=70;
     // }
      
      spoutt();

}
////////////////////////////////////////////////////////////////////////////////////////////////////////////////pRESS
void mousePressed() {
  if(mouseX >= 1030 && mouseX <=1700 && mouseY > 660 && mouseY <830){
     onclick = mouseX;
     random = false;
  }
  if(mouseX <= 100 && mouseY <=100 ){
          flag = true;
          movetoend = true;
          run_firsttimeinterface = true;
          saverun = true;
          delect();
  }
    if(mouseX > 60 && mouseX < (60 + width/2+670) && mouseY > 400 && mouseY < (400 + 170)){
     //robby.mousePress(2);
  }
  if(!clickopening) {clickopening=!clickopening;}
  timemer = millis();

}

void mouseReleased() {
  //if(!clickopening) {clickopening=!clickopening; print("x");}
  if(mouseX >= 1030 && mouseX <=1700 && mouseY > 660 && mouseY <830){
     released = mouseX;
     if(onclick-released >= 20){
       if(count<=4){
          count++;
       }
     random = false;
    }else if(onclick-released <= -20 ){
      if(count>0){
         count--;
       }
       random = false;
    }
    
    
  }
}

void mouseClicked(MouseEvent evt){
   // if mouseClicked " > " next color
   if( mouseX > 1638 && mouseX < (1638 + img4.width) && mouseY > 695 && mouseY < (695 + img4.height)){
         if(count<=4){
          count++;
       }
         
      }
      
   // if mouseClicked " < " back color
   else if(mouseX > 1043 && mouseX < (1043 + img4.width) && mouseY > 695 && mouseY < (695 + img4.height)){
        if(count>0){
         count--;
       }
    }
    
 // if mouseClicked " ^ " back color " ^ " next pattern
   else if(mouseX > 353 && mouseX < (353 + img.width) && mouseY > 80 && mouseY < (80 + img.height)){
       if(count_pattern<2){
         count_pattern++;
         
         //println("count_pattern =" + count_pattern);
       }
       else if(count_pattern>=2){
           count_pattern=0;
         }
       random = false;
       delect();
   }
   
   // if mouseClicked " ^ " back color " v " back pattern
   else if(mouseX > 353 && mouseX < (353 + img2.width) && mouseY > 895 && mouseY < (895 + img2.height)){
       if(count_pattern>0){
         count_pattern--;
       }
       else if(count_pattern<=0){
           count_pattern=2;
         }
       random = false;
       delect();
   }
   
   // Delete
   else if(mouseX > 1150 && mouseX < (1150 + img5.width) && mouseY > 884 && mouseY < (884 + img5.height)){
     delect();
   }
   
   // Color
  else if(mouseX > 1340 && mouseX < (1340 + img6.width) && mouseY > 884 && mouseY < (884 + img6.height)){
       colorChange(true);
   }
   
   // Save
   else if(mouseX > 1528 && mouseX < (1528 + img6.width) && mouseY > 884 && mouseY < (884 + img6.height)){
       savePicture();
   }
   //235, 206, 335 
  if(pointCircle(mouseX, mouseY, 572, 536, 670  )) {
    ass_color(get(mouseX, mouseY)); 
}
//    distance = 0;

//for(int i=0; i<=4; i++){
//  if(pointCircle(mouseX, mouseY, 1200, 600, 25)) {
//    ass_color(get(mouseX, mouseY));
//     distance = distance+=70;
//  }
//}



}
