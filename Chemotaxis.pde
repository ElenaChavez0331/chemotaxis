/*Elena Chavez
febuary 12,2025
random walk*/
 
 Walker [] dragons;// array of walker class
 void setup()  
 {    
   size(800,800);
  // background(30,53,82);
    dragons = new Walker [7];// how many dotts
  for(int i = 0; i < dragons.length;i++)
  {
    dragons[i] = new Walker();
  }

   //initialize bacteria variables here  
 }  
 void draw()  
 {    
   frameRate(40);
   //move and show the bacteria  
    background(30,53,82);// covers up the trail
   for(int i = 0; i < dragons.length;i++)
  {

    dragons[i].walk() ;

  dragons[i].show()  ;
  }
  fill(0);
   //fill(69,92,81);
ellipse(750,760,100,80);
 }  
 class Walker    
 {    
   //lots of java!  

     int myX,myY;
     Walker()
     {
       myX =(int)(Math.random()*10)-3;
       myY = (int)(Math.random()*10)-3;
     }
     void walk()
     {
       if((myX >= 150 && myX <=770) &&(myY >= 775)){// if the dots are less than the given it goes to a black hole
       myX= 1000;
       myY= 1000;
       //fill(69,92,81);
       fill(0);
       }
       else if( myX != 1000 && myY != 1000){
         if(mouseX > myX){
             myX= myX + (int)(Math.random()*10);
         }else{
           myX= myX -(int)(Math.random()*10);// briings back onto screen
         }
         if(mouseY > myY){
             myY= myY + (int)(Math.random()*10);
         }else{
           myY= myY - (int)(Math.random()*10);// bringd it back onto the screen
         }
           
       //myX = myX + (int)(Math.random()*+5)+3;
       //myY = myY + (int)(Math.random()*+5)+3;
     }
     }
     void show()
     {
     //fill(0);

      fill(69,92,81);
       //ellipse(750,760,100,80);
      // fill(255);
       ellipse(myX,myY,50,50);
       
     //       fill(0);
     //ellipse(myX-5,myY,5,10);
     //     ellipse(myX+5,myY,5,10);
 }
 }
