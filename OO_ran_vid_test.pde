/**
 * Producing Productive Bodies (Procedural Video Collage)
 * By Chelsea Thompto
 * 2019
 *
 * (To be run in conjunction with speaker control program or solo.)
 *
 * Procedural Experimental Multimodal Project
 *
 * Loads videos, and images. 
 *
 * Plays video and images with in translucent color overlays, 
 * video effects, and layer blending in real time. 
 *
 * All effects are generated in realtime, 40+ media files are
 * processed in the above manner, leading to an effectively
 * infinte number of variations.
 *
 */

import processing.video.*;

// establish media handling classes
MovOb mova;
MovOb2 movb;
PhoOb2 movc;

// set number of files for each media set
int maxPhotoA = 2; 
int maxMovieA = 8;
int maxMovieB = 1;
int maxMovieC = 11;

// generate arrays for media sets
Movie[] moviea = new Movie[maxMovieA];
Movie[] movieb = new Movie[maxMovieB];
Movie[] moviec = new Movie[maxMovieC];
 
void setup() {
  //size(320,180); //for running on Chelsea's Mac
  fullScreen(); // for running Actual Display
  frameRate(29);
  smooth(4);
  noCursor();
  background(0);
  
  // load preformatted media into arrays from data folder
 
  for (int i=0; i<maxMovieA; i++) {
    moviea[i] = new Movie(this, i+"a"+".mp4");
  }
  for (int i=0; i<maxMovieB; i++) {
    movieb[i] = new Movie(this, i+"b"+".mp4");
  }
  for (int i=0; i<maxMovieC; i++) {
    moviec[i] = new Movie(this, i+"c"+".mp4");
  }
  
  // initialize object processes
  mova = new MovOb();
  movb = new MovOb2();
  movc = new PhoOb2();
}
 
void movieEvent(Movie moviea) {
    moviea.read();
}
 
void draw() {
  // display media from objects
  mova.display();
  movb.display();
  movc.display();
  filter(THRESHOLD, .55);
  movb.display2();
}

// screen shot feature
void keyPressed() {
  if (key == 's' || key == 'S') {
      saveFrame();
    }
}
