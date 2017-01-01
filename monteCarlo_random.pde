
int[] randomCounts;
int w;

void setup() {
  size(640,240);
  randomCounts = new int[100];
  w = width/randomCounts.length;
}

void draw() {
  
  background(255);

  int index = monteCarlo();
  randomCounts[index]++;

  stroke(0);
  fill(175);
  
  for (int i = 0; i < randomCounts.length; i++) {
    rect(i*w, height-randomCounts[i], w-1, randomCounts[i]);
  }

}

int monteCarlo(){
  while(true){
    int r1 = (int) random(0,100);
    int r2 = (int) random(0,100);
    
    if(r2 < r1){
      return r1; 
    }
    
  }
}