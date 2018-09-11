object knightRider {
	method peso() = 500
	method peligrosidad() = 10
}

object bumblebee {
	var property esAuto = false
	method peso() = 800
	method peligrosidad() = if(esAuto) 15 else 30
}

object paqueteDeLadrillos {
	var property cantidadDeLadrillos = 0
	const pesoLadrillo = 2
	method peligrosidad() = 2
	method peso() = pesoLadrillo * cantidadDeLadrillos
}

object arenaAGranel {
	var property peso = 0
	method peligrosidad() = 1
}

object bateriaAntiaerea {
	var property conMisiles = false
	method peso() = if(conMisiles) 300 else 200 
	method peligrosidad() = if(conMisiles) 100 else 0 
}

object contenedorPortuario {
	const contenido = []
	method peso() = 100 + contenido.sum({elemento => elemento.peso()})
}