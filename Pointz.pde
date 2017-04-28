class Pointz {
  float x;
  float y;
  float z;
float radius;
  
  Pointz(float s,float t, float loc,float radius) {
    
    
    
    
    x =  loc+(radius*cos(radians(s))*sin(radians(t)));
    y =  loc+(radius*sin(radians(s))*sin(radians(t)));
    z =  loc+(radius*cos(radians(t)));
    



}
  
  void display(){
    pushMatrix();
    translate(x,y,z);
    stroke(0);
    strokeWeight(5);
    point(0,0,0);
    popMatrix();
  }
  

//void crosslinks(float s_inc, float layer){ //, Pointz c){
//  stroke(0);
//  strokeWeight(1);
//  line(a.x,a.y,a.z,b.x,b.y,b.z);
}
//}