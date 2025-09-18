import mensajeros.*
import destinos.*
object paquete {
    var pagado = false
    var precio = 50

     method pagar(cantidadAPagar) {
        precio = 0.max(precio - cantidadAPagar)
        if(precio == 0){
            pagado = true
        }
    }
    method estaPagado() {
        return pagado
    }
    method precio() {
        return precio
    }
    method puedeEntregar(mensajero) {
        return self.estaPagado() && (puenteDeBrooklyn.puedePasar(mensajero) || laMatrix.puedePasar(mensajero))
    }
    method ganancia() {
        return 100
    }
}
object paquetito {
    method estaPagado() {
        return true
    }
    method precio() {
        return 0
    }

    method puedeEntregar(mensajero) {
        return self.estaPagado()
    }
    method ganancia() {
        return 10
    }
}
object paqueton {
    var pagado = false
    var precio = 100

    method estaPagado() {
        return pagado
    }
    method pagar(cantidadAPagar) {
        precio = 0.max(precio - cantidadAPagar)
        if(precio == 0){
            pagado = true
        }
    }
    method precio() {
        return precio
    }

    method puedeEntregar(mensajero) {
        return self.estaPagado() && puenteDeBrooklyn.puedePasar(mensajero) && laMatrix.puedePasar(mensajero)
    }
    method ganancia() {
        return 500
    }
}
object paquetote {
    var pagado = false
    var precio = 200

    method estaPagado() {
        return pagado
    }
    method pagar(cantidadAPagar) {
        precio = 0.max(precio - cantidadAPagar)
        if(precio == 0){
            pagado = true
        }
    }
    method precio() {
        return precio
    }
    method puedeEntregar(mensajero) {
        return self.estaPagado() && laMatrix.puedePasar(mensajero)
    }
    method ganancia() {
        return 800
    }
}