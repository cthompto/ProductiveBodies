
class PhoOb2 {
  
 int rannum4 = int(random(11)); // turn on for random vid
 //int rannum4 = 1; // turn off and turn above on for random vid
 
PhoOb2() {
  moviec[rannum4].volume(0);
  moviec[rannum4].play();
}
 
void display() {
   tint(255, 75);
   image(moviec[rannum4], 0, 0, width, height);

   float mda = moviec[rannum4].duration();
   float mta = moviec[rannum4].time();
   
   if (mta > mda*.99) {
     rannum4 = int(random(11)); // turn on for random vid
     moviec[rannum4].volume(0);
     moviec[rannum4].jump(0);
     moviec[rannum4].play();
   }
   
   if (second() % 30 == 0) {
   print("A" + rannum4 + "\n");
   }
}

}
