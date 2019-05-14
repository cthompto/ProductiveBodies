class MovOb2 {
  // int rannum2 = int(random(3)); // turn on for random video
 int rannum2 = 0; // turn off and turn line above on for random video

MovOb2() {
  movieb[rannum2].volume(0);
  movieb[rannum2].play();
  movieb[rannum2].volume(0);
}
 
void display() {
  tint(255, 100);
  image(movieb[rannum2], 0, 0, width, height);

   float mdb = movieb[rannum2].duration();
   float mtb = movieb[rannum2].time();
   
   if (mtb > mdb*.99) {
     //rannum2 = int(random(3)); // turn on for random video
     movieb[rannum2].volume(0);
     movieb[rannum2].jump(0);
     movieb[rannum2].speed(random(.5 , 1.5));
     movieb[rannum2].play();
     movieb[rannum2].volume(0);
   }
   
   if (second() % 30 == 0) {
   print("B" + rannum2 + "\n");
   }
}

void display2() {
  tint(35, 105, 255, 55);
  image(movieb[rannum2], 0, 0, width, height);
  filter(POSTERIZE, 16);
}
}
