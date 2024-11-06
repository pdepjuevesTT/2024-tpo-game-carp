//Archivo para niveles
import wollok.game.*

//Mesadas Simples Frente
class MesasSimples{
    //Apoyar plato
    
}

class MesadaSimpleFrente inherits MesasSimples{
    method image() = "mesadaSimpleFrente1.png"
    const property position
}

const mesadaSimpleFrente1 = new MesadaSimpleFrente(position = game.at(16,12))
const mesadaSimpleFrente2 = new MesadaSimpleFrente(position = game.at(19,12))
const mesadaSimpleFrente3 = new MesadaSimpleFrente(position = game.at(22,12))
const mesadaSimpleFrente4 = new MesadaSimpleFrente(position = game.at(13,15))
const mesadaSimpleFrente5 = new MesadaSimpleFrente(position = game.at(6,15))
const mesadaSimple19 = new MesadaSimpleFrente(position = game.at(3,15))

//Mesadas Simples
class MesadaSimple {
    method image() = "mesadaSimple1.png"
    const property position
}

const mesadaSimple1 = new MesadaSimple(position = game.at(16,13))
const mesadaSimple2 = new MesadaSimple(position = game.at(16,15))
const mesadaSimple3 = new MesadaSimple(position = game.at(22,13))
const mesadaSimple4 = new MesadaSimple(position = game.at(22,15))
const mesadaSimple5 = new MesadaSimple(position = game.at(16,6))
const mesadaSimple6 = new MesadaSimple(position = game.at(19,6))
const mesadaSimple7 = new MesadaSimple(position = game.at(22,6))
const mesadaSimple8 = new MesadaSimple(position = game.at(16,4))
const mesadaSimple9 = new MesadaSimple(position = game.at(16,2))
const mesadaSimple10 = new MesadaSimple(position = game.at(16,0))
const mesadaSimple11 = new MesadaSimple(position = game.at(22,4))
const mesadaSimple12 = new MesadaSimple(position = game.at(22,2))
const mesadaSimple13 = new MesadaSimple(position = game.at(22,0))
const mesadaSimple14 = new MesadaSimple(position = game.at(25,0))
const mesadaSimple15 = new MesadaSimple(position = game.at(28,0))
const mesadaSimple16 = new MesadaSimple(position = game.at(31,0))
const mesadaSimple17 = new MesadaSimple(position = game.at(34,0))
const mesadaSimple18 = new MesadaSimple(position = game.at(37,0))

//Mesas con sarten
class MesaConSarten {
    method image() = "mesaConSarten.png"
    const property position
}

const mesaConSarten1 = new MesaConSarten(position = game.at(25,15))
const mesaConSarten2 = new MesaConSarten(position = game.at(27,15))
const mesaConSarten3 = new MesaConSarten(position = game.at(29,15))
const mesaConSarten4 = new MesaConSarten(position = game.at(31,15))

//Mesas de ingredientes
class MesaDeIngrediente {
    const imagen
    method image() = imagen
    const property position
    //Agarrar ingrediente
}

const mesaLechuga = new MesaDeIngrediente(imagen = "mesaLechuga4.png", position = game.at(0,7))
const mesaPan = new MesaDeIngrediente(imagen = "mesaPan5.png", position = game.at(1,9))
const mesaCarne = new MesaDeIngrediente (imagen = "mesaCarne2.png", position = game.at(2,11))
const mesaTomate = new MesaDeIngrediente (imagen = "mesaTomate1.png", position = game.at(3,13))

class MesaConCuchillo {
    method image() = "mesaConCuchillo1.png"
    const property position
}

const mesaConCuchillo1 = new MesaConCuchillo(position = game.at(13,0))

const mesasConCuchillos = [mesaConCuchillo1]

//Pileta
object pileta {
    method image() = "pileta1.png"
    const property position = game.at(9,15)
}

//Basura
object basura{
    method image() = "basura1.png"
    method position() = game.at(0,2)
}


















/*
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
*/