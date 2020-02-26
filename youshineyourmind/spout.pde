void spoutt(){
  PShape[] patternsvg = {pattern1svg, pattern2svg, pattern3svg};
  pgr.beginDraw();
  //pushMatrix();
  //pgr.colorMode(HSB, TWO_PI,100,100);
  //pgr.scale(1.19);
  pgr.noStroke();
  //pgr.fill(6,100,100);
  //pgr.rect(100,100,100,100);
  for(int i = 0; i < patternsvg[count_pattern].getChildCount(); i++){
      ps = patternsvg[count_pattern].getChild(i);
      pgr.fill(tempcolor[i]);
      pgr.shape( ps ,190,83);
  }
  //popMatrix();
  pgr.endDraw();
  
  spout.sendTexture(pgr);
  //spout.sendTexture();
}
