class SouOb4 {
  int soundnum4 = int(random(20));
  int timedelay2 = int(random(25000, 100000));
  
SouOb4() {
  soundc[soundnum4].amp(1.0);
  //soundc[soundnum3].play();
}

void voiceplay() {
  while (true) {
    if (soundc[soundnum4].isPlaying()) {
      break;
    } else {
        if( millis() > timedelay2 ){
          soundc[soundnum4].stop();
          soundnum4 = int(random(20));
          //soundc[soundnum4].jump(0);
          soundc[soundnum4].amp(1.0);
          timedelay2 = millis() + int(soundc[soundnum4].duration()*1000) + int(random(25000, 100000));
          soundc[soundnum4].play();

        } else {
          break;
        }
    }
  }
}

 void voicefiledisplay() {
   textAlign(RIGHT);
   textSize(20);
   text(soundnum4, (width-10), (height*.6));
   text(timedelay2, (width-10),(height*.7));
   textAlign(LEFT);
   text("Voice sound file 2 # :", 10, (height*.6));
   text("Time delay: ", 10 , (height*.7));
 }
}
