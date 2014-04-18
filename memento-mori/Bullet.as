package {
    import flash.display.MovieClip;
    import flash.events.Event;
	
    public class Bullet extends MovieClip {
        private var speed:int = 10;
		private var initialX:int;
        public function Bullet(playerX:int, playerY:int, playerDirection:String, animationState:String) {
			if(playerDirection == "left") {
				speed = -10;
				x = playerX - 8;
			} else if(playerDirection == "right") {
				speed = 10;
				x = playerX + 8;
			}
			if (animationState == "crouching")
			{
				y = playerY - 81;
				if (playerDirection == "left") {
					x = playerX - 18;
				} else {
					x = playerX + 18;
				}
			} else {
				y = playerY - 97;
			}
			addEventListener(Event.ENTER_FRAME, loop);
		}
		
        public function loop(e:Event):void {
            x += speed;
			if(speed > 0) { //if player is facing right
				if(x > initialX + 640) { //and the bullet is more than 640px to the right of where it was spawned
					removeSelf(); //remove it
				}
			} else { //else if player is facing left
				if(x < initialX - 640) { //and bullet is more than 640px to the left of where it was spawned
					removeSelf(); //remove it
				}
			}
        }
		
		public function removeSelf():void {
			removeEventListener(Event.ENTER_FRAME, loop); // stop the loop
			this.parent.removeChild(this); // Parent object removes the child
		}
    }
}