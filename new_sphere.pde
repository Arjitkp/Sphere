float m = 0;
float radius = 100;
float mag = 30;
int layer = 18; /// MAKE IT INT , MUST BE MULTIPLE OF 180
int t_inc = 180/layer;
int ppl = 30; // NO OF PARTICLE PER LAYER must be multiple of 360 :/
int ang = int(360/ppl);   // ANG BETWEEN EACH PARTICLE
int s_inc = ppl;
int nop = 5000;// (ppl*layer);
Pointz [] p;
int i = 0;
float t = 0;

float s = 0;
float cx;




void setup(){
size(500,500,P3D);
  p = new Pointz [nop];
  for(float t = 0 ; t<=180; t+=t_inc){
  for(float s = 0 ; s<360; s+=ang){
  p[i] = new Pointz(s,t,0.0,radius);
  i = i+1;
   //println(i);
  }
  //println(i);
  }
    
}

void draw() {
  background(255);
  //rotateX(frameCount*0.005);
  //rotateY(mouseY*0.005);
 translate(width/2,height/2,m);
 rotateX(frameCount*0.005*-1);
 rotateY(mouseY*0.005*-1);

for(int j = 0; j<i; j+=1){
        p[j].display();
}


 for(int j =0 ; j< layer; j++){
   for(int g = 1; g<s_inc;g++){
     strokeWeight(1);
   line(p[g+(s_inc*j)].x,p[g+(s_inc*j)].y,p[g+(s_inc*j)].z,
   p[(g+(s_inc*j))-1].x,p[(g+(s_inc*j))-1].y,p[(g+(s_inc*j))-1].z);
    if(g==(s_inc-1)){
      line(p[g+(s_inc*j)].x,p[g+(s_inc*j)].y,p[g+(s_inc*j)].z,
   p[(g+(s_inc*j))-(s_inc-1)].x,p[(g+(s_inc*j))-(s_inc-1)].y,p[(g+(s_inc*j))-(s_inc-1)].z);
  }
   }
 }
  for(int j = 1; j<=layer; j++){
    for(int g=0; g<s_inc;g++){
      line(p[g+(s_inc*j)].x,p[g+(s_inc*j)].y,p[g+(s_inc*j)].z,
      p[g+(s_inc*(j-1))].x,p[g+(s_inc*(j-1))].y,p[g+(s_inc*(j-1))].z);
    }
   
  


}
}


void mousePressed() {
  if(mouseButton == RIGHT){
    mag = -1*mag;
  }
 m  = m+ mag;
 
 

}