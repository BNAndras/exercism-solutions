typedef Point = {
	x:Float,
	y:Float
}

function score(point:Point):Int {
	var distance = Math.sqrt(
		Math.pow(point.x, 2) + Math.pow(point.y, 2));
	if (distance <= 1) {
		return 10;
	} else if (distance <= 5) {
		return 5;
	} else if (distance <= 10) {
		return 1;
	} else {
		return 0;
	}
}