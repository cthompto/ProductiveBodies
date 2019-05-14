/**
 * Producing Productive Bodies (Artist Audio Book)
 * By Chelsea Thompto
 * 2019
 * 
 * (To be run in conjunction with projector control program or solo or with book piece.)
 *
 * Procedural Experimental Multimodal Project
 *
 * Loads sound. Sound files are mixed and overlayed in real time.
 *
 * All effects are generated in realtime, 40+ media files are
 * processed in the above manner, leading to an effectively
 * infinte number of variations.
 *
 */

import processing.sound.*;

//establish media handling classes
SouOb soua;
SouOb2 soub;
SouOb3 souc;
SouOb4 soud;
SouOb5 soue;

// set number of files for each media set
int maxSoundA = 10;
int maxSoundB = 9;
int maxSoundC = 20;

// generate arrays for media sets
SoundFile[] sounda = new SoundFile[maxSoundA];
SoundFile[] soundb = new SoundFile[maxSoundB];
SoundFile[] soundc = new SoundFile[maxSoundC];

void setup() {
    size (500,250);
    background(0);
    // load preformatted media into arrays from data folder
    for (int i=0; i<maxSoundA; i++) {
      sounda[i] = new SoundFile(this, i+"a"+".wav");
    }
    for (int i=0; i<maxSoundB; i++) {
      soundb[i] = new SoundFile(this, i+"b"+".wav");
    }
    for (int i=0; i<maxSoundC; i++) {
      soundc[i] = new SoundFile(this, i+"c"+".wav");
    }
    
    // initialize object processes
    soua = new SouOb();
    soub = new SouOb2();
    souc = new SouOb3();
    soud = new SouOb4();
    soue = new SouOb5();
}

void draw() {
  soua.riverplay();
  soua.riverfiledisplay();
  soub.bodyplay();
  soub.bodyfiledisplay();
  souc.voiceplay();
  souc.voicefiledisplay();
  soud.voiceplay();
  soud.voicefiledisplay();
  soue.voiceplayoverflow();
  soue.voiceoverflowdisplay();
  textAlign(RIGHT);
  text(millis(), (width-10), (height*.9));
  textAlign(LEFT);
  text("Uptime :", 10, (height*.9));
  text("Audio Status:", 10 , (height*.1));

}
