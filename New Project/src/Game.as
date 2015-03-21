package 
{
	import flash.display.SpreadMethod;
	import flash.display.Sprite;
	import flash.events.Event;
	import XXXNoScope360HeadShot.inputs.XXXKeyboard;
	/**
	 * ...
	 * @author Alonzo Pizarro
	 */
	public class Game extends Sprite
	{
		private var hero:Hero;
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
			stage.addEventListener(Event.ENTER_FRAME, loop);
			var enemy:doom = new doom();
			addChild(enemy);
			enemy.x = stage.stageWidth / 2;
			enemy.y = stage.stageHeight / 2;
		}
		
		private function loop(e:Event):void 
		{
			hero.update();
		}
		
	}

}