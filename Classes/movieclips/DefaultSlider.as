////////////////////////////////////////////////////////////////
//File Name    - DefaultSlider.as                             //
//Author       - Justin Harrison                              //
//Main Purpose - Class for the DefaultSlider symbol.	      //
////////////////////////////////////////////////////////////////

class movieclips.DefaultSlider extends MovieClip
{
	[Inspectable()]
	private var sliderText:String; //Component parameter for the text field string.
	private var defaultTextField:TextField;
	private var defaultThumb:MovieClip;
	private var defaultTrack:MovieClip;
	private function DefaultSlider()
	{
		StateControl();
		defaultTextField.text = sliderText; //Will set the text field's string to the component parameter's variable.
		defaultThumb._x = defaultTrack._x;
	}
	private function StateControl():Void
	{
		onRollOver = function()
		{
			gotoAndStop("over");
			defaultTextField.textColor = 0xCCCC00; //Will change the text field's colour to yellow.
		}
		onRollOut = function()
		{
			gotoAndStop("up");
			defaultTextField.textColor = 0xCCCCCC; //Will change the text field's colour to light grey.
		}
	}
	public function OptionSelection(movement:Number)
	{
		if(movement == 1 && defaultThumb._x < defaultTrack._x + defaultTrack._width - defaultThumb._width)
		{
			defaultThumb._x = defaultThumb._x + (defaultTrack._width - defaultThumb._width) / 100;
		}
		else if(movement == 2 && defaultThumb._x > defaultTrack._x)
		{
			defaultThumb._x = defaultThumb._x - (defaultTrack._width - defaultThumb._width) / 100;
		}
	}
}