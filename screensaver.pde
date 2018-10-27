Matrix [] matrix = new Matrix[100];

MatrixStreams matrixstream = new MatrixStreams();

MatrixRain [] matrixrain = new MatrixRain[100];
String string1= "Wake up , Peralta ... The Matrix has you ... Follow the white rabbit . Knock, knock ,Peralta. ";

int string1Len = string1.length();

int s =0 ;

int x = 50;
int y = 50;
int i = 0;
int j = 0;

char letter1 [] = new char [string1Len] ;

void setup() {
  size(2560, 1600);
  background(0);
  frameRate(60);

  for ( int i = 0; i <matrix.length; i++) {
    matrix[i] = new Matrix();
  } 
  for ( int i = 0; i <matrixrain.length; i++) {
    matrixrain[i] = new MatrixRain();
  } 

  for ( int i = 0; i <= string1Len-1; i ++) {
    letter1[i] = string1.charAt(i);
  }
}

void draw() {
  /*if (s<93) {
   typing();
   }
   if (s >=93 ) {
   s++;
   for ( int i = 0; i< matrix.length; i ++) {
   
   matrix[i].fall();
   
   matrix[i].show();
   }
   }
   if (s>300) {
   
   background(0);
   
   for ( int i = 0; i < matrixrain.length; i++) {
   
   matrixrain[i].show();
   matrixrain[i].fall();
   }
   }*/
background(0);
  matrixstream.createStreams();
  for ( int i = 0; i < 160; i ++) {
    matrixstream.createStreams();
    matrixstream.streamsFall();
  }
}


void typing() {
  fill(102, 168, 85);
  text(letter1[i], x, y);
  x+=textWidth(letter1[i])+3;
  i++;
  s++;
  delay(int(random(10, 400)));
  if ( i ==22 || i == 45 || i == 71 || i == 93) {
    background(0);
    x=50;
  }
  if ( i == string1Len) {
    i =0;
    noLoop();
  }
}
