class SouOb2 {
  int soundnum2 = int(random(9));
  
SouOb2() {
  soundb[soundnum2].amp(0.6);
  //soundb[soundnum2].play();
}

void bodyplay() {
  while (true) {
    if (soundb[soundnum2].isPlaying()) {
      break;
    } else {
      soundb[soundnum2].stop();
      soundnum2 = int(random(9));
      soundb[soundnum2].jump(0);
      soundb[soundnum2].amp(0.6);
      soundb[soundnum2].play();
    }
  }
}
 void bodyfiledisplay() {
   textAlign(RIGHT);
   textSize(20);
   text(soundnum2, (width-10), (height*.3));
   textAlign(LEFT);
   text("Body sound file # :", 10, (height*.3));
 }
}
