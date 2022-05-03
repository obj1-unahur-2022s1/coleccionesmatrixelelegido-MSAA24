object neo{
	var energia = 100
	
	method energia() = energia
	
	method vitalidad() = energia / 10
	
	method saltar() {energia *= 0.5}
	
	method esElElegido() = true
	
}

object trinity{

	method vitalidad() = 0
	method saltar(){}
	method esElElegido() = false
}

object morfeo{
	var property vitalidad = 8
	var estaCansado = false
	
	method estaCansado() = estaCansado
	
	method saltar(){
		vitalidad = 0.max(vitalidad-1)
		estaCansado = !estaCansado
	}
	method esElElegido() = false
	
}









