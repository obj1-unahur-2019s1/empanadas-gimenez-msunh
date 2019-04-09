//GALVAN
object galvan {

	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
	// var property sueldo = 15000
	var property sueldo = 15000 // atributo / propiedad
	var property deuda = 0
	var property dinero = 0

	
//	method cobrarSueldo(cuanto){
//		sueldo-=cuanto
//		dinero+=cuanto
//	}
	method cobrarSUeldo(){
		
	}

	
//	method sueldo() { //setter - accessor
//		return sueldo
//	}
//
//	method sueldo(nuevoValor) { //getter - accessor
//		sueldo = nuevoValor
//	}
	
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

	var property sueldo = 0
	var property totalDineroCobrado = 0
	var property cantidadEmpanadasVendidas = 100
	var montoPorEmpanada = 15 // es una constante porque no varia eset precio

	method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	}

	method cobrarSueldo(){
		totalDineroCobrado +=self.sueldo() 
	}

	method totalDineroCobrado() {
		return totalDineroCobrado
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
