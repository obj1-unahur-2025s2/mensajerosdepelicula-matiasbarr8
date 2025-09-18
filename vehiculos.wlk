object bicicleta {
    method peso() {
        return 5
    }
}
object camion {
    var acoplados = 1
    var peso = 500

    method peso() {
        return peso
    }
    method cantidadDeAcoplados() {
        return acoplados
    }
    method agregarAcoplado() {
        acoplados = acoplados + 1
        peso = peso + 500
    }
}