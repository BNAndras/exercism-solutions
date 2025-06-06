/**
* Your implementation of the PopCount exercise
*/
component {

	/**
	* @returns 
	*/
	function eggCount( number ) {
		var eggs = 0
		var value = number
		while(value != 0) {
			if (value % 2 != 0) {
				eggs += 1
			}

			value = value \ 2
		}

		return eggs
	}
}