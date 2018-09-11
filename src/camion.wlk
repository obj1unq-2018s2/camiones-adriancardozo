object camion {
	var cargamento = []
	const tara = 1000
	method cargar(cosa){
		cargamento.add(cosa)
	}
	method descargar(cosa){
		cargamento.remove(cosa)
	}
	method objetosPeligrosos(n) = cargamento.filter({cosa => cosa.peligrosidad() > n})
	method objetosMasPeligrososQue(cosa) = cargamento.filter({elemento => elemento.peligrosidad() > cosa.peligrosidad()})
	method puedeCircularEnRuta(nivelMaximoPeligrosidad) = cargamento.all({elemento => elemento.peligrosidad() <= nivelMaximoPeligrosidad})
	method pesoTotal() = tara + cargamento.sum({elemento => elemento.peso()})
	method excedidoDePeso() = self.pesoTotal() > 2500
}
