package
{
    import flash.display.MovieClip;
    import flash.events.Event;
 
    public class Videotape extends MovieClip {
        public function Videotape(xLocation:int, yLocation:int) {
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