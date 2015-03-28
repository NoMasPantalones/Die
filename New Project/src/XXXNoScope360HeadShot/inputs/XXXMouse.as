package XXXNoScope360HeadShot.inputs 
{
	import flash.display.Stage;
	import flash.events.MouseEvent;
	import flash.utils.Dictionary;
	/**
	 * ...
	 * @author Alonzo Pizarro
	 */
	public class XXXMouse 
	{
		
		static public function init(stage:Stage,config:Dictionary=null):void
		{
			stage.addEventListener(MouseEvent.CLICK, click);
			if (config != null)
			{
				if (config['active_down'])
				{
					stage.addEventListener(MouseEvent.MOUSE_DOWN, mDown);
					stage.addEventListener(MouseEvent.MOUSE_UP, mUp);
				}
			}
		}
		
		static private function mUp(e:MouseEvent):void 
		{
			
		}
		
		static private function mDown(e:MouseEvent):void 
		{
			
		}
		
		static private function click(e:MouseEvent):void 
		{
			trace(e.target);
		}
		
	}

}