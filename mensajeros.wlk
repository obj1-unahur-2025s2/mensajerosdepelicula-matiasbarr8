import vehiculos.*
import paquetes.*
object roberto {
    var vehiculo = bicicleta

    method cambiarVehiculo(nuevoVehiculo) {
        vehiculo = nuevoVehiculo
    }

    method peso() {
        return 90 + vehiculo.peso()
    }
    method puedeLlamar() {
        return false
    }
    method entregarPaqueteEn(unPaquete, destino) {
        return unPaquete.estaPagado() && destino.puedePasar(self)
    }
}
object chuckNorris {

    method peso() {
        return 80
    }
    method puedeLlamar() {
        return true
    }
    method entregarPaqueteEn(unPaquete, destino) {
        return unPaquete.estaPagado() && destino.puedePasar(self)
    }
}

object neo {
    var credito = false

    method peso() {
        return 0
    }
    method cargarCredito() {
        credito = true
    }
    method consumirCredito() {
        credito = false
    }
    method puedeLlamar() {
        return credito
    }
    method entregarPaqueteEn(unPaquete, destino) {
        return unPaquete.estaPagado() && destino.puedePasar(self)
    }
}

object carlos {
    var credito = false

    method peso() {
        return 120 + camion.peso()
    }
    method vehiculo() {
        return camion
    }
    method cargarCredito() {
        credito = true
    }
    method consumirCredito() {
        credito = false
    }
    method puedeLlamar() {
        return credito
    }
    method entregarPaqueteEn(unPaquete, destino) {
        return unPaquete.estaPagado() && destino.puedePasar(self)
    }
}