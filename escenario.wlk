//Archivo para niveles
import wollok.game.*

object sarten{
    /* method image() = "sarten.jpg"
    var property position = game.origin() */
}


//Mueables con tabla

class MuebleCTablaDerecha {
    method image() = "muebleCTabla1.png"
    const property position
}

const muebleCTabla1 = new MuebleCTablaDerecha(position = game.at(5,9))

const muebleCTabla2 = new MuebleCTablaDerecha(position = game.at(4,7))

const muebleCTabla3 = new MuebleCTablaDerecha(position = game.at(3,5))

const muebleCTabla4 = new MuebleCTablaDerecha(position = game.at(2,3))

//Mesada con puertas

class MesadaCPuertasDerecha {
    method image() = "mesadaCPuertas1.png"
    const property position
}

const mesadaCPuertas1 = new MesadaCPuertasDerecha(position = game.at(1,1))

const mesadaCPuertas6 = new MesadaCPuertasDerecha(position = game.at(15,1))

const mesadaCPuertas7 = new MesadaCPuertasDerecha(position = game.at(15,3))

const mesadaCPuertas8 = new MesadaCPuertasDerecha(position = game.at(15,7))

const mesadaCPuertas9 = new MesadaCPuertasDerecha(position = game.at(15,9))

class MesadaCPuertasIzquierda {
    method image() = "mesadaCPuertas2.png"
    const property position
}

const mesadaCPuertas2 = new MesadaCPuertasIzquierda(position = game.at(13,1))

const mesadaCPuertas3 = new MesadaCPuertasIzquierda(position = game.at(13,3))

const mesadaCPuertas4 = new MesadaCPuertasIzquierda(position = game.at(13,7))

const mesadaCPuertas5 = new MesadaCPuertasIzquierda(position = game.at(13,9))

//Basura

object basura{
    method image() = "basura1.png"
    method position() = game.at(1,0)
}