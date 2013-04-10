////////////////////////////////////////////////////////////////
//File Name    - DefaultSlider.as                             //
//Author       - Justin Harrison                              //
//Main Purpose - Class for the DefaultSlider symbol.	      //
////////////////////////////////////////////////////////////////

class movieclips.DefaultSlider extends MovieClip
{
	private var textField:TextField;
	private function DefaultSlider()
	{
		StateControl();
	}
	private function StateControl():Void
	{
		onRollOver = function()
		{
			gotoAndStop("over");
			textField.textColor = 0xCCCC00; //Will change the text field's colour to yellow.
		}
		onRollOut = function()
		{
			gotoAndStop("up");
			textField.textColor = 0xCCCCCC; //Will change the text field's colour to light grey.
		}
	}
}