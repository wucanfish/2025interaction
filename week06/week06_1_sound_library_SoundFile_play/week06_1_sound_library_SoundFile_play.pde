//week06_1_sound_library_SoundFile_play
//sketch-Library-MangeLibrary -install sound
//file-Examples-libraries - Sound
import processing.sound.*;
SoundFile sound;
void setup(){
   size(500,400);
   sound=new SoundFile(this,"music.mp3");
   sound.play();
}
void draw(){
  
}
