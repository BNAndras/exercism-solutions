/**
* Your implementation of the ReverseString exercise
*/
component {
	
	/**
	* @returns 
	*/
	function reverse( value ) {
		var reversed = '';

		for (var i = Len(value); i >= 1; i--) {
			reversed &= value[i];
		}

		return reversed;
	}
	
}