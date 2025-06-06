/**
* Your implementation of the ResistorColorDuo exercise
*/
component {

	COLORS = ["black","brown","red","orange","yellow","green","blue","violet","grey","white"]

	/**
	* @returns 
	*/
	function value( colors ) {
		var tens = colorCode(colors[1])
		var ones = colorCode(colors[2])
		return tens * 10 + ones
	}

    function colorCode( color ) {
        return ArrayFind(COLORS, color) - 1;
    }
}