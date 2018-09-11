object knightRider {
	method peso() = 500
	method peligrosidad() = 10
}

object bumblebee {
	var property esAuto = false
	method peso() = 800
	method peligrosidad() = if(esAuto) 15 else 30
}

