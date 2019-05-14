class MovOb {
  
 int rannum = int(random(8)); // turn on for random vid
 //int rannum = 2; // turn off and turn above on for random vid
 
MovOb() {
  moviea[rannum].volume(0);
  moviea[rannum].play();
  moviea[rannum].volume(0);
}
 
void display() {
  tint(255, 220);
  image(moviea[rannum], 0, 0, width, height);

   float mda = moviea[rannum].duration();
   float mta = moviea[rannum].time();
   
   if (mta > mda*.99) {
     moviea[rannum].volume(0);
     rannum = int(random(8)); // turn on for random vid
     moviea[rannum].volume(0);
     moviea[rannum].jump(0);
     moviea[rannum].play();
   }
   
   if (second() % 30 == 0) {
   print("A" + rannum + "\n");
   }
}

}
