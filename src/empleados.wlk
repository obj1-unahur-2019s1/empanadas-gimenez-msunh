//GALVAN
object galvan {

	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
	// var property sueldo = 15000
	var property sueldo = 15000
	var property deuda = 0
	var property dinero = 0

	
	method cobrarSueldo(cuanto){
		sueldo-=cuanto
		dinero+=cuanto
	}
	
	method sueldo() {
		return sueldo
	}

	method sueldo(nuevoValor) {
		sueldo = nuevoValor
	}
	
	method totalCobrado(){
		return dinero
	}
	
	method gastar(cuanto){
		dinero-=cuanto
	}
	
	method totalDeuda(){
		return deuda
	}
	
	method totalDinero(){
		return dinero	
	}
	

}
//BAIGORRIA
object baigorria {

	var sueldo = 0
	var property dinero = 0
	var cantidadEmpanadasVendidas = 100
	var montoPorEmpanada = 15

	method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	}

	method cobrarSueldo() {
		dinero-=sueldo
	}

	method totalCobrado() {
		return dinero
	}

	// method sueldo() = cantidadEmpanadasVendidas * montoPorEmpanada // con este metodo no puede cobrar?
	method sueldo() {
		sueldo = cantidadEmpanadasVendidas * montoPorEmpanada 
		return sueldo
	}

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
