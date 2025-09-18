import mensajeros.*
import destinos.*
import paquetes.*
object empresa {
    const mensajeros =[]
    const pendientes = []
    const ganancia = []

    method mensajeros() {
        return mensajeros
    }

    method contratarMensajero(mensajero) {
        mensajeros.add(mensajero)
    }

    method despedirMensajero(mensajero) {
        mensajeros.remove(mensajero)
    }

    method despedirATodos() {
        mensajeros.clear()
    }

    method esGrande() {
        return mensajeros.size() > 2
    }

    method puedeEntregarElPrimerMensajero(paquete, destino) {
        return mensajeros.first().entregarPaqueteEn(paquete, destino)
    }

    method pesoDelUltimoMensajero() {
        return mensajeros.last().peso()
    }

    method algunMensajeroPuedeEntregar(unPaquete,unDestino) {
        return mensajeros.any({mens => mens.entregarPaqueteEn(unPaquete, unDestino)})
    }

    method mensajerosQuePuedenLlevarUnPaquete(unPaquete,unDestino) {
        return mensajeros.filter({mens => mens.entregarPaqueteEn(unPaquete, unDestino)})
    }

    method haySobrepeso() {
        return  ((mensajeros.fold(0, {acum,mensajero => mensajero.peso() + acum})) / mensajeros.size()) > 500
    }
    
    method elegirUnMensajeroYEnviarSinoPonerPendiente(unPaquete,unDestino) {
        if(self.algunMensajeroPuedeEntregar(unPaquete,unDestino)){
            self.agregarGanancia(unPaquete)
            self.removerDePendientes(unPaquete)
            return mensajeros.anyOne()
            
        }
        else{
            self.agregarAPendientes(unPaquete)
        }
    }

    method agregarAPendientes(unPaquete) {
        pendientes.add(unPaquete)
    }

    method paquetesPendientes() {
        return pendientes.size()
    }

    method buscarPaqueteMasGrande() {
        return pendientes.max({precio => pendientes.precio()})
    }

    method gananciaTotal() {
        return ganancia.sum()
    }

    method agregarGanancia(unPaquete) {
        ganancia.add(unPaquete.ganancia())
    }

    method agregarPaquetePagadoAPendientes(unPaquete) {
        if(not unPaquete.estaPagado() or unPaquete.estaPagado()){
            self.pagarSiSePuede(unPaquete)
            pendientes.add(unPaquete)
        }
    }
    method pagarSiSePuede(unPaquete) {
        if(unPaquete.precio() == 50){
            unPaquete.pagar(50)
        }
        else if (unPaquete.precio() == 100){
            unPaquete.pagar(100)
        }
    }

    method enviarTodos() {
        pendientes.forEach({paq => self.elegirUnMensajeroYEnviarSinoPonerPendiente(paq,puenteDeBrooklyn)})
    }

    method removerDePendientes(unPaquete) {
        if(pendientes.contains(unPaquete)){
            pendientes.remove(unPaquete)
        }
    }

}