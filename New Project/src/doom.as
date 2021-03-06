package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import XXXNoScope360HeadShot.loader.XXXLoader;
	import XXXNoScope360HeadShot.objects.GameObjects;
	
	/**
	 * ...
	 * @author Alonzo Pizarro
	 */
	public class doom extends GameObjects 
	{
		private var rand:Number;
		private var limitX:Number;
		private var limitY:Number;
		public function doom() 
		{
			rand = Math.random();
			assetClass = XXXLoader.getAsset("doomguy") as Class;
		}
		
		override public function init():void
		{
			limitX = stage.stageWidth - width;
			limitY = stage.stageHeight - height;
			x = Math.random() * limitX;
			y = Math.random() * limitY;
			super.init();
		}
		
		override public function update():void
		{
			if (rand > 0.5)
			{
				x += velocity;
				y -= velocityY;
			}
			else {
				x -= velocity;
				y += velocityY;
			}
			if (y >= limitY)
			{
				y = limitY;
				velocityY *= -1;
			}
			if (y < 0)
			{
				y = 0;
				velocityY *= -1;
			}
			if (x >= limitX)
			{
				x = limitX;
				velocity *= -1;
			}
			if (x < 0)
			{
				x = 0;
				velocity *= -1;
			}
		}
		
	}

}