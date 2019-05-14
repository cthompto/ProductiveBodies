class SouOb5 {
  int soundnum5 = int(random(20));
  int soundnum6 = int(random(20));
 
SouOb5() {
  soundc[soundnum5].amp(1.0);
  //soundc[soundnum3].play();
}

void voiceplayoverflow() {
  while (true) {
    if (soundc[soundnum5].isPlaying()) {
      break;
    } else {
    if (minute() % 10 == 0) {
        if( second() % 15 == 0){
          soundnum5 = int(random(20));
          soundc[soundnum5].amp(1.0);
          soundc[soundnum5].play();
        } else {
          break;
        }
      } else {
        break;
    }
  }
  }
  while (true) {
    if (soundc[soundnum6].isPlaying()) {
      break;
    } else {
    if (minute() % 10 == 0) {
        if( second() % 15 == 0){
          soundnum6 = int(random(20));
          soundc[soundnum6].amp(1.0);
          soundc[soundnum6].play();
        } else {
          break;
        } 
    } else {
      break;
    }
    }
  }
}


void voiceoverflowdisplay() {
  textAlign(RIGHT);
  textSize(20);
  if (minute() % 10 == 0){
    text("ON", (width-10), (height*.8));
  } else {
    text("OFF", (width-10),(height*.8));
  }
   textAlign(LEFT);
   text("Voice overflow is:", 10, (height*.8));
 }
}
