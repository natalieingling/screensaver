class MatrixStreams {
  int d = 10;
  int matrixPX = 50;
  float matrixPY = 50;
  float yspace = 20;
  float yspeed = 0.05;
  int [] down = new int [d];

  void createStreams() {
    PVector matrixStream = new PVector (matrixPX, matrixPY);
    int n = (int(random(0, 2)));

    for (int i = 0; i <down.length; i++) {
      down[i] = n ;
    }
    
    for ( int i = 0 ;  i< down.length ; i ++){
      text(down[i],matrixStream.x,matrixStream.y);
      matrixStream.y+=yspace;
    }
  }
  void streamsFall() {
    matrixPY+= yspeed;
    
      if (matrixPY > height ) {
      x=(int(random(50,1600)));
      matrixPY = 0 ;
      background(0);
      createStreams();
    }
  }
}
