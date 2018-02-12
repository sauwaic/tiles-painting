import generativedesign.*;
import processing.pdf.*;
import java.util.Calendar;

PImage img;

void setup() {
  size(600, 600);
  colorMode(HSB, 360, 100, 100, 100);
  noStroke();
  img = loadImage("/Users/SAUWEE/Downloads/pencil.jpg");
  img.resize(width, height);
}

void draw() {

  int tileCountX = 6;
  int tileCountY = 6;
  int tileX = 10;
  int tileY = 10;

  if (mousePressed == true) {
    color c = img.get(mouseX, mouseY);
    float h = hue(c);
    float s = saturation(c);
    float b = brightness(c);


    for ( int x=(tileCountX)*-1/2; x<=tileCountX; x++) {
      for (int y=(tileCountY)*-1/2; y<=tileCountY; y++) {
        float posX = mouseX + x*tileX;
        float posY = mouseY + y*tileY;

        fill(h, s, b*random(0, 100), random(0, 100));
        rect(posX, posY, tileX, tileY);
      }
    }
  }
}