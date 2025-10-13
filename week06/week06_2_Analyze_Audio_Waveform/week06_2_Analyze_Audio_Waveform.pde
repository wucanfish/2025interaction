//使用了Waveform 的物件變數
/**
 * This sketch shows how to use the Waveform class to analyze a stream
 * of sound. Change the number of samples to extract and draw a longer/shorter
 * part of the waveform.
 */

import processing.sound.*;

// Declare the sound source and Waveform analyzer variables
SoundFile sample;//宣告 soundFile 物件變數

Waveform waveform;//宣告 waveform 物件變數

// Define how many samples of the Waveform you want to be able to read at once
int samples = 100;// 一次讀入Sample

public void setup() {
  size(640, 360);
  //background(255);

  // Load and play a soundfile and loop it.
  sample = new SoundFile(this, "beat.aiff");
  sample.loop();

  // Create the Waveform analyzer and connect the playing soundfile to it.
  waveform = new Waveform(this, samples);
  waveform.input(sample);// 用剛剛的音樂檔進行分析
}

public void draw() {
  // Set background color, noFill and stroke style
  background(0);
  stroke(255);
  strokeWeight(2);
  noFill();

  // Perform the analysis
  waveform.analyze();//進行波型的分析
  
  beginShape();
  for(int i = 0; i < samples; i++){// 把這100格的座標都算出來
    // Draw current data of the waveform
    // Each sample in the data array is between -1 and +1 
    vertex(
      map(i, 0, samples, 0, width),// x座標 ,對應0......100的值,拉長到視窗長度640
      map(waveform.data[i], -1, 1, 0, height)//y 座標 就是waveform.data[i] 
    );
  }
  endShape();
}
