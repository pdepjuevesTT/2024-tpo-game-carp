//Archivo para niveles
import wollok.game.*

object sarten{
    /* method image() = "sarten.jpg"
    var property position = game.origin() */
}

//Mesada Simple Frente
class MesadaSimpleFrente {
    method image() = "mesadaSimpleFrente1.png"
    const property position
}

const mesadaSimpleFrente1 = new MesadaSimpleFrente(position = game.at(12,7))
const mesadaSimpleFrente2 = new MesadaSimpleFrente(position = game.at(14,7))
const mesadaSimpleFrente3 = new MesadaSimpleFrente(position = game.at(16,7))


//Mesada Simple Frente
class MesadaSimple {
    method image() = "mesadaSimple.png"
    const property position
}

const mesadaSimple1 = new MesadaSimple(position = game.at(12,8))
const mesadaSimple2 = new MesadaSimple(position = game.at(14,8))
const mesadaSimple3 = new MesadaSimple(position = game.at(16,8))


//Mueables con tabla

class MuebleCTablaDerecha {
    method image() = "muebleCTabla1.png"
    const property position
}

const muebleCTabla1 = new MuebleCTablaDerecha(position = game.at(1,1))
const muebleCTabla2 = new MuebleCTablaDerecha(position = game.at(1,3))
const muebleCTabla3 = new MuebleCTablaDerecha(position = game.at(1,5))
const muebleCTabla4 = new MuebleCTablaDerecha(position = game.at(1,7))

//Mesada con puertas

class MesadaCPuertasDerecha {
    method image() = "mesadaCPuertas1.png"
    const property position
}

const mesadaCPuertas1 = new MesadaCPuertasDerecha(position = game.at(5,1))
const mesadaCPuertas6 = new MesadaCPuertasDerecha(position = game.at(5,3))
const mesadaCPuertas7 = new MesadaCPuertasDerecha(position = game.at(5,5))
const mesadaCPuertas8 = new MesadaCPuertasDerecha(position = game.at(5,7))
const mesadaCPuertas9 = new MesadaCPuertasDerecha(position = game.at(5,9))

class MesadaCPuertasIzquierda {
    method image() = "mesadaCPuertas2.png"
    const property position
}

const mesadaCPuertas2 = new MesadaCPuertasIzquierda(position = game.at(7,1))
const mesadaCPuertas3 = new MesadaCPuertasIzquierda(position = game.at(7,3))
const mesadaCPuertas4 = new MesadaCPuertasIzquierda(position = game.at(7,5))
const mesadaCPuertas5 = new MesadaCPuertasIzquierda(position = game.at(7,7))

//Basura

object basura{
    method image() = "basura1.png"
    method position() = game.at(28,12)
}
