Star[] nightSky = new Star [200];
ArrayList <Asteroid> kirk = new ArrayList <Asteroid>();
Spaceship tim = new Spaceship();
ArrayList <Bullet> yeet = new ArrayList <Bullet>();
int a = 10;
int lev = 1;
public void setup()
{
  size(500,500);
  background(0);
  for(int i = 0; i < nightSky.length; i++)
  {
    nightSky[i] = new Star();
  }
  for(int p = 0; p < a; p++)
  {
    kirk.add(new Asteroid());
  }
}
public void draw() 
{
 background(0);
  for(int i = 0; i < nightSky.length; i++)
    {
      nightSky[i].show();
    }
  for(int p = 0; p < kirk.size(); p++)
    {
      kirk.get(p).show();
      kirk.get(p).move();
      if(dist(kirk.get(p).getMyX(), kirk.get(p).getMyY(), tim.getMyX(), tim.getMyY()) < 20){
          kirk.remove(p);
          break;
        }
          for(int k = 0; k < yeet.size(); k++)
          if(dist(qwe.get(p).getMyX(), qwe.get(p).getMyY(), yeet.get(k).getMyX(), yeet.get(k).getMyY()) < 20){
          qwe.remove(p);
          yeet.remove(k);
          break;
        }
    }
  for(int k = 0; k < yeet.size(); k++){
      yeet.get(k).show();
      yeet.get(k).move();
    }
    }
  tim.move();
  tim.show();
  if(kirk.size() == 0){
    for(int p = 0; p < (a+lev*5-5); p++)
    {
      kirk.add(new Asteroid());
    }
    lev++;
  }
}
public void keyPressed(){
  if(key == 's'){
      tim.stop();
      tim.hyperSpace();
  }else if(key == 'w'){
      tim.accelerate(.5);
  }else if(key == 'a'){
      tim.turn(-30);
  }else if(key == 'd'){
      tim.turn(30);
    }
   else if(key == ' '){
      if(yeet.size() < 8)
        yeet.add(new Bullet());
   }
  }
