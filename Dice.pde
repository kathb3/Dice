int one, two, three, four, five, six, total;

void setup(){
    size(500,500);
    noLoop();
    textAlign(CENTER);
}

void draw(){
    background(#f8f4da);
    noStroke();
    for(int i = 15; i <= 485; i+=30){
      for(int j = 15; j <= 430; j+=30){
        Die deuce = new Die(i,j);
        deuce.show();
        deuce.roll();
      }
}
      fill(255,0,0);
      textSize(15);
      text("how many of each?", 250, 448);
      fill(#2C4E72);
      textSize(13);
      text("ones: " + one, 75,468);
      text("twos: " + two, 145,468);
      text("threes: " + three, 215,468);
      text("fours: " + four, 285,468);      
      text("fives: " + five, 355,468);      
      text("sixes: " + six, 425,468);
      fill(0,0,255);
      textSize(18);
      text("total: " + total, 250,492);
  }
  void mousePressed() //reroll
  {
      redraw();
      one = 0;
      two = 0;
      three = 0;
      four = 0;
      five = 0;
      six = 0;
      total = 0;
  }
  class Die
  {
      int xCoord, yCoord, dice;
      Die(int x, int y)
      {
        xCoord = x;
        yCoord = y;
        dice = (int)(Math.random()*6)+1; 
      }
    void roll()
    {
      total = total + dice;
        if(dice == 1){
          one++;
        }
        else if(dice == 2){
          two++;
        }
        else if(dice == 3){
          three++;
        }
        else if(dice == 4){
          four++;
        }
        else if(dice == 5){
          five++;
        }
        else{
          six++;
        }    
     }
    void show(){ 
        if(dice == 1){
            fillColor(#D800A6);
            ellipse(xCoord+10,yCoord+10,3,3);
        } else if (dice == 2){
            fillColor(#FFB95D);
            ellipse(xCoord+5,yCoord+15,3,3);
            ellipse(xCoord+15,yCoord+5,3,3);
        } else if(dice == 3){
            fillColor(#8758FF);
            ellipse(xCoord+10,yCoord+10,3,3);
            ellipse(xCoord+5,yCoord+15,3,3);
            ellipse(xCoord+15,yCoord+5,3,3);
        } else if(dice == 4){
            fillColor(#A0EA79);
            ellipse(xCoord+5,yCoord+15,3,3);
            ellipse(xCoord+15,yCoord+5,3,3);
            ellipse(xCoord+5,yCoord+5,3,3);
            ellipse(xCoord+15,yCoord+15,3,3);
        } else if(dice == 5){
            fillColor(#5CB8E4);
            ellipse(xCoord+10,yCoord+10,3,3); 
            ellipse(xCoord+5,yCoord+15,3,3);
            ellipse(xCoord+15,yCoord+5,3,3);                 
            ellipse(xCoord+5,yCoord+5,3,3);
            ellipse(xCoord+15,yCoord+15,3,3);            
        } else { //6
            fillColor(#CF83FF);
            ellipse(xCoord+5,yCoord+15,3,3);
            ellipse(xCoord+15,yCoord+5,3,3);
            ellipse(xCoord+5,yCoord+5,3,3);
            ellipse(xCoord+15,yCoord+15,3,3);
            ellipse(xCoord+5,yCoord+10,3,3);
            ellipse(xCoord+15,yCoord+10,3,3);
        }
    }               
    
    void fillColor(int colour){
    fill(colour);
    rect(xCoord,yCoord,20,20);
    fill(0,0,0);
    }
}
