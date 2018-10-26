class Matrix {

  int d = (int (random (5, 50)));
  int i = 0;
  float y = (int (random (0, 300)));
  float yspeed = 20;

  int x = (int (random(50, 1600)));
  int [] down = new int [ d ] ;

  void fall() {
    y = y + yspeed;

    if (y > height ) {
      y = 0 ;
      background(0);
    }
  }

  void show() {

    int n = (int (random(0, 2)));
    //assigning each down array to random 0 and 1
    for ( i = 0; i <= d-1; i++) {
      down[i]= (n);
    }
    //print the text
 for ( i = 0; i<= down.length-1; i++) {
      text(down[i], x, y);
    }
    
    if ( i == d -1 ){
      background(0);
      text(down[i],x,y);
    }
  }
}
