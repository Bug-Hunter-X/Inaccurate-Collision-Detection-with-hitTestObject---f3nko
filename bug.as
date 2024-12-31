function checkCollision(obj1:MovieClip, obj2:MovieClip):Boolean {
  if (obj1.hitTestObject(obj2)) {
    trace ("Collision detected between "+ obj1 +" and "+ obj2);
    return true;
  }
  return false;
}

//Example usage
var myObj1:MovieClip = new MyMovieClip();
var myObj2:MovieClip = new MyMovieClip();

addChild(myObj1);
addChild(myObj2);

myObj1.x = 100;
myObj1.y = 100;

myObj2.x = 200;
myObj2.y = 200;

myObj1.onEnterFrame = function(){
  if (checkCollision(myObj1, myObj2)) {
    trace("Collision detected");

  }
};