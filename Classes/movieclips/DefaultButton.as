////////////////////////////////////////////////////////////////
//File Name    - DefaultButton.as                             //
//Author       - Justin Harrison                              //
//Main Purpose - Class for the DefaultButton symbol.	      //
////////////////////////////////////////////////////////////////

class movieclips.DefaultButton extends MovieClip
{
	private var textField:TextField; //Variable for the class to communicate with the symbol's text field.
	[Inspectable()]
	private var buttonText:String; //Component parameter for the text field string.
	[Inspectable()]
	private var gotoLabel:String; //Component parameter for which timeline label to go to, if null wont do anything.
	private function DefaultButton() //Creates the initialization function.
	{
		textField.text = buttonText; //Will set the text field's string to the component parameter's variable.
		StateControl(); //Will call the StateControl function, which handles where the symbols timeline is currently focused.
	}
	private function StateControl() //Creates the function for controlling where the symbols timeline is currently focused.
	{
		onRollOver = function() //When the button is rolled over, this function will be called.
		{
			gotoAndStop("over"); //Will change the symbol's timeline focus to the over label.
			textField.textColor = 0xCCCC00; //Will change the text field's colour to yellow.
		}
		onRollOut = function() //When the button is rolled out, this function will be called.
		{
			gotoAndStop("up"); //Will change the symbol's timeline focus to the up label.
			textField.textColor = 0xCCCCCC; //Will change the text field's colour to light grey.
		}
		onPress = function() //When the button is pressed, this function will be called.
		{
			gotoAndStop("down"); //Will change the symbol's timeline focus to the down label.
			textField.textColor = 0xCC0000 //Will change the text field's colour to red.
		}
		onRelease = function() //When the button is released, this function will be called.
		{
			gotoAndStop("over"); //Will change the symbol's timeline focus to the over label.
			textField.textColor = 0xCCCC00; //Will change the text field's colour to yellow.
			if(gotoLabel != null) //If the gotoLabel booleon variable isn't empty/null, then the code within will be run once.
			{
				_root.gotoAndStop(gotoLabel); //Will change the root timeline's focus to the current variable gotoLabel's string.
			}
		}
		onReleaseOutside = function()
		{
			gotoAndStop("up"); //Will change the symbol's timeline focus to the up label.
			textField.textColor = 0xCCCCCC; //Will change the text field's colour to light grey.
		}
	}
}