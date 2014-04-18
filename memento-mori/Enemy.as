package
{
    import flash.display.MovieClip;
    import flash.events.Event;
 
    public class Enemy extends MovieClip {
        public function Enemy(xLocation:int, yLocation:int) {
            // constructor code
            x = xLocation;
            y = yLocation;
 
            addEventListener(Event.ENTER_FRAME, loop);
        }
 
        public function loop(e:Event):void {
            // Extra looping code
        }
 
        public function removeSelf():void {
            trace("remove self");
            removeEventListener(Event.ENTER_FRAME, loop); // stop the loop
            this.parent.removeChild(this); // Parent object removes the child
        }
 
    }
 
}