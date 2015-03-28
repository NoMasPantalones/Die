package 
{
	import flash.display.SpreadMethod;
	import flash.display.Sprite;
	import flash.events.Event;
	import XXXNoScope360HeadShot.inputs.XXXKeyboard;
	import XXXNoScope360HeadShot.inputs.XXXMouse;
	/**
	 * ...
	 * @author Alonzo Pizarro
	 */
	public class Game extends Sprite
	{
		private var hero:Hero;
		private var enemy:doom;
		public function Game() 
		{
			super();
			addEventListener(Event.ADDED_TO_STAGE, added);
		}
		
		private function added(e:Event):void {
			removeEventListener(Event.ADDED_TO_STAGE, added);
			hero = new Hero();
			addChild(hero);
			XXXKeyboard.init(stage);
			XXXMouse.init(stage);
			stage.addEventListener(Event.ENTER_FRAME, loop);
			enemy = new doom();
			addChild(enemy);
		}
		
		private function loop(e:Event):void 
		{
			hero.update();
			enemy.update();
		}
		
	}

}