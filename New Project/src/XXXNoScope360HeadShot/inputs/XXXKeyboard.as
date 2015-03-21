package XXXNoScope360HeadShot.inputs 
{
	import flash.display.Stage;
	import flash.events.KeyboardEvent;
	import flash.ui.Keyboard;
	/**
	 * ...
	 * @author Alonzo Pizarro
	 */
	public class XXXKeyboard 
	{
		static private var stage:Stage;
		static public var leftPress:Boolean;
		static public var rightPress:Boolean;
		static public var downPress:Boolean;
		static public var upPress:Boolean;
		static public function init(_stage:Stage):void
		{
			stage = _stage;
			stage.addEventListener(KeyboardEvent.KEY_DOWN, onKeyDown);
			stage.addEventListener(KeyboardEvent.KEY_UP, onKeyUp);
		}
		
		static private function onKeyDown(e:KeyboardEvent):void 
		{
			switch (e.keyCode)
			{
				case Keyboard.LEFT:
					leftPress = true;
				break;
				case Keyboard.RIGHT:
					rightPress = true;
				break;
				case Keyboard.DOWN:
					downPress = true;
				break;
				case Keyboard.UP:
					upPress = true;
				break;
			}
			trace(e.keyCode);
		}
		
		static private function onKeyUp(e:KeyboardEvent):void 
		{
			switch (e.keyCode)
			{
				case Keyboard.LEFT:
					leftPress = false;
				break;
				case Keyboard.RIGHT:
					rightPress = false;
				break;
				case Keyboard.DOWN:
					downPress = false;
				break;
				case Keyboard.UP:
					upPress = false;
				break;
			}
		}
		
		static public function destroy():void {
			stage.removeEventListener(KeyboardEvent.KEY_DOWN, onKeyDown);
			stage.removeEventListener(KeyboardEvent.KEY_UP, onKeyUp);
		}
		
	}

}