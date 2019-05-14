class SouOb {
  int soundnum = int(random(10));
  
SouOb() {
  sounda[soundnum].amp(0.1);
  //sounda[soundnum].play();
}

void riverplay() {
  while (true) {
    if (sounda[soundnum].isPlaying()) {
      break;
    } else {
      sounda[soundnum].stop();
      soundnum = int(random(10));
      sounda[soundnum].jump(0);
      sounda[soundnum].amp(0.1);
      sounda[soundnum].play();
    }
  }
}
 void riverfiledisplay() {
   background(0);
   textAlign(RIGHT);
   textSize(20);
   text(soundnum, (width-10), (height*.2));
   textAlign(LEFT);
   text("River sound file # :", 10, (height*.2));
 }
}
