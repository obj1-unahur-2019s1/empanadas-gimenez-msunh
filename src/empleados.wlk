//GALVAN
object galvan {

	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
	// var property sueldo = 15000
	var property sueldo = 15000 // atributo / propiedad
	var property deuda = 0
	var property dinero = 0

//	method cobrarSueldo(){
//		dinero=sueldo
//		if (deuda>0){
//			dinero=dinero-deuda
//			
//		}
//		
//	} 	
//	method sueldo() { //setter - accessor // no hace falta que use este metodo dado que uso el property
//		return sueldo
//	}
//
//	method sueldo(nuevoValor) { //getter - accessor / no hace falta que use este metodo dado que uso el property
//		sueldo = nuevoValor
//	}
//	method gastar(cuanto){
//		//
//		
//		if (deuda>0){
//			deuda=deuda-cuanto
//		}else{//(deuda<0)
//			dinero = dinero-cuanto
//		}
//
//	}

	method gastar(cuanto) {
		// le alcanza la plata para todo el gasto
		if (dinero >= cuanto) {
			dinero -= cuanto
		} else {
			// le alcanza la plata para una parte
			if (dinero > 0) {
				deuda += cuanto - dinero
				dinero = 0
			} else {
				// no tiene plata, pura deuda
				deuda += cuanto
			}
		}
	}

	method cobrarSueldo() {
		var cuantoDescuento = deuda.min(sueldo)
		deuda -= cuantoDescuento 
		dinero += sueldo - cuantoDescuento
		
//		// cobra y paga la deuda y no le sobra - tiene deuda usa todo el sueldo
//		// cobra y paga la deuda y le falta - tiene deuda y no le alcanza el sueldo
//		if (deuda >= sueldo) {
//			deuda -= sueldo
//		} else {
//			// cobra y paga la deuda y le sobra - tiene deuda y le sobra el sueldo
//			// cobra y no debe nada - no tiene deuda
//			dinero += sueldo - deuda
//			deuda = 0
//		}
	}

	method totalDeuda() {
		return deuda
	}

	method totalDinero() {
		return dinero
	}

}



//BAIGORRIA
object baigorria {

	var property sueldo = 0
	var property totalCobrado = 0
	var property cantidadEmpanadasVendidas = 100
	var montoPorEmpanada = 15 // es una constante porque no varia eset precio

	method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	}

	method cobrarSueldo(){
		totalCobrado +=self.sueldo() 
	}

	method totalCobrado() {
		return totalCobrado
	}

	method sueldo() = cantidadEmpanadasVendidas * montoPorEmpanada // con este metodo se puede cobrar , la sintaxis esta abreviada
//	method sueldo() { // es una propiedad, usamos el metodo de arriba
//		sueldo = cantidadEmpanadasVendidas * montoPorEmpanada 
//		return sueldo
//	}

}

//GIMENEZ JEFE
object gimenez {
	var dinero = 300000

	method dinero() {
		return dinero
	}

	method pagarA(empleado) {
		dinero -= empleado.sueldo()
		empleado.cobrarSueldo()
	}

}

