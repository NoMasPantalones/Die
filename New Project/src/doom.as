package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import XXXNoScope360HeadShot.loader.XXXLoader;
	
	/**
	 * ...
	 * @author Alonzo Pizarro
	 */
	public class doom extends Sprite 
	{
		private var skin:Sprite;
		
		public function doom() 
		{
			super();
			addEventListener(Event.ADDED_TO_STAGE, added);
		}
		
		private function added(e:Event):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, added);
			var c:Class = XXXLoader.getAsset("doomguy");
			skin = new c();
			addChild(skin);
		}
		
	}

}