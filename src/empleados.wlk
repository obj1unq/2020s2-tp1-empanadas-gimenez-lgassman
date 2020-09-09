object baigorria {
	
	var empanadasVendidas = 0
	var dineroCobrado = 0
	const precioPorEmpanada = 15
	
	method vender(unaCantidad) {
		empanadasVendidas += unaCantidad
	}
	
	method sueldo() {
		return empanadasVendidas * precioPorEmpanada
	}
	
	method totalCobrado() {
		return dineroCobrado
	}
		
	method cobrarSueldo() { 
		dineroCobrado += self.sueldo()
		empanadasVendidas = 0	
	}
	
}

object galvan {
	
	var sueldo = 15000
	var saldo = 0
	
	method sueldo(_sueldo) {
		sueldo = _sueldo
	}
	
	method sueldo() {
		return sueldo
	}

	method cobrarSueldo() {
		saldo += self.sueldo()
	}
	
	method gastar(unaCantidad) {
		saldo -= unaCantidad
	}
	
	method dinero() {
		return saldo.max(0)
	}
	
	method deuda() {
		return saldo.min(0).abs()	
	}
	
}

object gimenez {
	
	var fondo = 300000
	
	method pagarSueldo(empleado) {
		fondo -= empleado.sueldo()
		empleado.cobrarSueldo()
	}
	
	method fondo() {
		return fondo
	}
	
}

