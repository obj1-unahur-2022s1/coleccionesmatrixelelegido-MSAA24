import matrix.*

object nave {
	const pasajeros = [neo,trinity, morfeo]
	
	//método no necesario
	method subirNave(unPasajero){
		pasajeros.add(unPasajero)
	}
	method cantPasajeros() = pasajeros.size()
	
	method estaEquilibrada(){
		return self.mayorVitalidad().vitalidad() <  self.menorVitalidad().vitalidad() * 2
	}
	method mayorVitalidad() = pasajeros.max( {p => p.vitalidad()} )
	
	method menorVitalidad() = pasajeros.min({ p => p.vitalidad()})
	
	method estaElElegidoEnNave() = pasajeros.any( { p => p.esElElegido() } )
	
	method chocar(){
		 pasajeros.forEach( { p => p.saltar() } )
		 pasajeros.clear()
		 }
		 
	method acelerar(){
		pasajeros.filter( { p => not p.esElElegido() }).forEach( { p => p.saltar() } )
	}
	method noElegidos()	= pasajeros.filter( { p => not p.esElElegido() })
	
	method acelerarOptimo(){
		self.noElegidos().forEach( { p => p.saltar() } )
	}	 
}
