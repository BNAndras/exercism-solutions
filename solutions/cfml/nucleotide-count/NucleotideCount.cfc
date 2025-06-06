/**
* Your implementation of the NucleotideCount exercise
*/
component {
	
	/**
	* @returns 
	*/
	function nucleotideCounts( strand ) {
		var a = 0
		var c = 0
		var g = 0
		var t = 0
		cfloop(index="i" from="1" to="#len(strand)#") {
			var char = strand[i]
			if (char == "a") {
				a += 1
			} else if (char == "c") {
				c += 1
			} else if (char == "g") {
				g += 1
			} else if (char == "t") {
				t += 1
			} else {
				Throw(message='Invalid nucleotide in strand')
			}
		}

		return  {"A":a,"C":c,"G":g,"T":t}
	}
	
}
