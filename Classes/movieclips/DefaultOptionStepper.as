////////////////////////////////////////////////////////////////
//File Name    - DefaultOptionStepper.as                      //
//Author       - Justin Harrison                              //
//Main Purpose - Class for the DefaultOptionStepper symbol.	  //
////////////////////////////////////////////////////////////////

class movieclips.DefaultOptionStepper extends MovieClip
{
	private var defaultTextField:TextField;
	private var optionTextField:TextField;
	public var optionSelectionNumber:Number = 0;
	[Inspectable()]
	private var optionSelectionArray:Array;
	[Inspectable()]
	private var optionStepperText:String; //Component parameter for the text field string.
	private function DefaultOptionStepper() //Creates the initialization function.
	{
		defaultTextField.text = optionStepperText; //Will set the text field's string to the component parameter's variable.
		StateControl(); //Will call the StateControl function, which handles where the symbols timeline is currently focused.
		OptionSelection();
	}
	private function StateControl() //Creates the function for controlling where the symbols timeline is currently focused.
	{
		onRollOver = function() //When the button is rolled over, this function will be called.
		{
			gotoAndStop("over"); //Will change the symbol's timeline focus to the over label.
			defaultTextField.textColor = 0xCCCC00; //Will change the text field's colour to yellow.
		}
		onRollOut = function() //When the button is rolled out, this function will be called.
		{
			gotoAndStop("up"); //Will change the symbol's timeline focus to the up label.
			defaultTextField.textColor = 0xCCCCCC; //Will change the text field's colour to light grey.
		}
		onReleaseOutside = function()
		{
			gotoAndStop("up"); //Will change the symbol's timeline focus to the up label.
			defaultTextField.textColor = 0xCCCCCC; //Will change the text field's colour to light grey.
		}
	}
	public function OptionSelection(movement:Number)
	{
		if(movement == 1 && optionSelectionNumber < optionSelectionArray.length - 1 )
		{
			optionSelectionNumber++;
		}
		else if(movement == 2 && optionSelectionNumber > 0)
		{
			optionSelectionNumber--;
		}
		optionTextField.text = optionSelectionArray[optionSelectionNumber];
	}
}