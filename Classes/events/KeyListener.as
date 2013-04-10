class events.KeyListener extends MovieClip
{
	public static var gotoScreen:String;
	private var keyListener:Object = new Object;
	function KeyListener()
	{
		keyListener.onKeyUp = function()
		{
			if( Key.getCode() == Key.SPACE )
			{
				_root.gotoAndStop(gotoScreen);
			}
		}
		Key.addListener(keyListener);
	}
}