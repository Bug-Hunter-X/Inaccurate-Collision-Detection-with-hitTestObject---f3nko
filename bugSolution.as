function checkCollision(obj1:MovieClip, obj2:MovieClip):Boolean {
  // Use bounding box collision detection for improved accuracy
  var rect1:Rectangle = obj1.getBounds(obj1.parent);
  var rect2:Rectangle = obj2.getBounds(obj2.parent);

  if (rect1.intersects(rect2)) {
    trace("Collision detected between "+ obj1 +" and "+ obj2);
    return true;
  }
  return false;
}

//Example usage (same as before)
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