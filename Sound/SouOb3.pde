class SouOb3 {
  int soundnum3 = int(random(20));
  int timedelay = int(random(25000, 100000));
  
SouOb3() {
  soundc[soundnum3].amp(1.0);
  //soundc[soundnum3].play();
}

void voiceplay() {
  while (true) {
    if (soundc[soundnum3].isPlaying()) {
      break;
    } else {
        if( millis() > timedelay ){
          soundc[soundnum3].stop();
          soundnum3 = int(random(20));
          //soundc[soundnum3].jump(0);
          soundc[soundnum3].amp(1.0);
          timedelay = millis() + int(soundc[soundnum3].duration()*1000) + int(random(25000, 100000));
          soundc[soundnum3].play();

        } else {
          break;
        }
    }
  }
}

 void voicefiledisplay() {
   textAlign(RIGHT);
   textSize(20);
   text(soundnum3, (width-10), (height*.4));
   text(timedelay, (width-10), (height*.5));
   textAlign(LEFT);
   text("Voice sound file # :", 10, (height*.4));
   text("Time delay: ", 10 , (height*.5));
 }
}
