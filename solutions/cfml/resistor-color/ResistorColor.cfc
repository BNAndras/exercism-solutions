/**
* Your implementation of the ResistorColor exercise
*/
component {
	
	COLORS = ["black","brown","red","orange","yellow","green","blue","violet","grey","white"]


	/**
	* @returns 
	*/
    function colorCode( color ) {
        return ArrayFind(COLORS, color) - 1;
    }
	
	/**
	* @returns 
	*/	
    function colors() {
        return COLORS;
    }
}