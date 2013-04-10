////////////////////////////////////////////////////////////////
//File Name    - DefaultThumb.as                              //
//Author       - Justin Harrison                              //
//Main Purpose - Class for the DefaultThumb symbol.	     	  //
////////////////////////////////////////////////////////////////

class movieclips.assets.DefaultThumb extends MovieClip
{
	private function DefaultThumb()
	{
		StateControl();
	}
	private function StateControl()
	{
		onMouseMove = function()
		{
			if(hitTest(_root._xmouse, _root._ymouse) && !Key.isDown(1))
			{
				gotoAndStop("over");
				labelFrame = "over";
			}
			else if(labelFrame == "over" && !hitTest(_root._xmouse, _root._ymouse) && !Key.isDown(1))
			{
				gotoAndStop("up");
				labelFrame = "up";
			}
		}
		onMouseDown = function()
		{
			if(labelFrame == "over" && hitTest(_root._xmouse, _root._ymouse))
			{
				gotoAndStop("down");
				labelFrame = "down";
			}
		}
		onMouseUp = function()
		{
			if(labelFrame == "down")
			{
				if(!hitTest(_root._xmouse, _root._ymouse))
				{
					gotoAndStop("up");
					labelFrame = "up";
				}
				else if(hitTest(_root._xmouse, _root._ymouse))
				{
					gotoAndStop("over");
					labelFrame = "over";
				}
				if(this == _parent.nextArrow)
				{
					_parent.OptionSelection(1);
				}
				if(this == _parent.backArrow)
				{
					_parent.OptionSelection(2);
				}
			}
		}
	}
}