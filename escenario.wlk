//Archivo para niveles
import wollok.game.*

//Mesadas Simples Frente
class MesasSimples{
    //Apoyar plato
    
}

// MESAS SIMPLES DE FRENTE
class MesadaSimpleFrente inherits MesasSimples{
    method image() = "mesadaSimpleFrente.png"
    const property position
}

//Mesas Simples de Frente ordenadas de izq a der -> de abajo a arriba
//y=12
const mesadaSimpleFrente1 = new MesadaSimpleFrente(position = game.at(14,12))
const mesadaSimpleFrente2 = new MesadaSimpleFrente(position = game.at(16,12))
const mesadaSimpleFrente3 = new MesadaSimpleFrente(position = game.at(18,12))
//y=16
const mesadaSimpleFrente4 = new MesadaSimpleFrente(position = game.at(6,16))
const mesadaSimpleFrente5 = new MesadaSimpleFrente(position = game.at(12,16))

//MESADAS SIMPLES
class MesadaSimple {
    method image() = "mesadaSimple.png"
    const property position
}

//Mesas Simples ordenadas de izquierda a derecha -> de abajo a arriba.
//y=2
const mesadaSimple1 = new MesadaSimple(position = game.at(4,2))
const mesadaSimple2 = new MesadaSimple(position = game.at(6,2))
const mesadaSimple3 = new MesadaSimple(position = game.at(10,2))
const mesadaSimple4 = new MesadaSimple(position = game.at(14,2))
const mesadaSimple5 = new MesadaSimple(position = game.at(18,2))
const mesadaSimple6 = new MesadaSimple(position = game.at(20,2))
const mesadaSimple7 = new MesadaSimple(position = game.at(22,2))
const mesadaSimple8 = new MesadaSimple(position = game.at(24,2))
const mesadaSimple9 = new MesadaSimple(position = game.at(26,2))
const mesadaSimple10 = new MesadaSimple(position = game.at(28,2))
//y=4
const mesadaSimple11 = new MesadaSimple(position = game.at(14,4))
const mesadaSimple12 = new MesadaSimple(position = game.at(18,4))
const mesadaSimple13 = new MesadaSimple(position = game.at(28,4))
//y=6
const mesadaSimple14 = new MesadaSimple(position = game.at(4,6))
const mesadaSimple15 = new MesadaSimple(position = game.at(14,6))
const mesadaSimple16 = new MesadaSimple(position = game.at(18,6))
const mesadaSimple17 = new MesadaSimple(position = game.at(28,6))
//y=8
const mesadaSimple18 = new MesadaSimple(position = game.at(14,8))
const mesadaSimple19 = new MesadaSimple(position = game.at(16,8))
const mesadaSimple20 = new MesadaSimple(position = game.at(18,8))
const mesadaSimple21 = new MesadaSimple(position = game.at(28,8))
//y=10
const mesadaSimple22 = new MesadaSimple(position = game.at(28,10))
//y=12
const mesadaSimple23 = new MesadaSimple(position = game.at(28,12))
//y=14
const mesadaSimple24 = new MesadaSimple(position = game.at(14,14))
const mesadaSimple25 = new MesadaSimple(position = game.at(18,14))
const mesadaSimple26 = new MesadaSimple(position = game.at(28,14))
//y=16
const mesadaSimple27 = new MesadaSimple(position = game.at(4,16))
const mesadaSimple28 = new MesadaSimple(position = game.at(14,16))
const mesadaSimple29 = new MesadaSimple(position = game.at(18,16))
const mesadaSimple30 = new MesadaSimple(position = game.at(28,16))

// MESAS CON SARTEN
class MesaConSarten {
    method image() = "mesaConSarten.png"
    const property position
}

const mesaConSarten1 = new MesaConSarten(position = game.at(20,16))
const mesaConSarten2 = new MesaConSarten(position = game.at(22,16))
const mesaConSarten3 = new MesaConSarten(position = game.at(24,16))
const mesaConSarten4 = new MesaConSarten(position = game.at(26,16))

// MESAS DE INGREDIENTES
class MesaDeIngrediente {
    const imagen
    method image() = imagen
    const property position
    //Agarrar ingrediente
}

const mesaLechuga = new MesaDeIngrediente(imagen = "mesaLechuga.png", position = game.at(4,8))
const mesaPan = new MesaDeIngrediente(imagen = "mesaPan.png", position = game.at(4,10))
const mesaCarne = new MesaDeIngrediente (imagen = "mesaCarne.png", position = game.at(4,12))
const mesaTomate = new MesaDeIngrediente (imagen = "mesaTomate.png", position = game.at(4,14))

class MesaConCuchillo {
    method image() = "mesaConCuchillo.png"
    const property position
}

const mesaConCuchillo1 = new MesaConCuchillo(position = game.at(8,2))
const mesaConCuchillo2 = new MesaConCuchillo(position = game.at(12,2))

const mesasConCuchillos = [mesaConCuchillo1,mesaConCuchillo2]

// PILETA
object pileta {
    method image() = "pileta.png"
    const property position = game.at(8,16)
}

// BASURA
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
