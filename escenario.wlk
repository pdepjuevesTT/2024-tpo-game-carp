//Archivo para niveles
import wollok.game.*
import chefs.*
import menu.*

//Mesadas Simples Frente
class MesasSimples{
    const property position
    var property ocupado = false

    //Apoyar plato
    method apoyarPlato(platoMano){
        if(platos.any{plato => plato == platoMano} && platoMano == chef1.objetoTransportado() && !ocupado){
            platoMano.position(self.position())
            game.whenCollideDo(chef1, game.addVisual(platoMano))
            ocupado = true
            game.say(self, "Plato apoyado correctamente.")
            chef1.quitarObjeto()
        } else if(ocupado){
            game.say(self, "Estoy ocupada")
        } else{
            game.say(self, "No tenes plato!")
        }
    }

    method mesadaVacia(){
        return !ocupado //mesada deberia estar vacia para colocar algo encima
    }
}

// MESAS SIMPLES DE FRENTE
class MesadaSimpleFrente inherits MesasSimples{
    method image() = "mesadaSimpleFrente.png"
}

//Mesas Simples de Frente ordenadas de izq a der -> de abajo a arriba
//y=12
const mesadaSimpleFrente1 = new MesadaSimpleFrente(position = game.at(14,12))
const mesadaSimpleFrente2 = new MesadaSimpleFrente(position = game.at(16,12))
const mesadaSimpleFrente3 = new MesadaSimpleFrente(position = game.at(18,12))
//y=16
const mesadaSimpleFrente4 = new MesadaSimpleFrente(position = game.at(6,16))
const mesadaSimpleFrente5 = new MesadaSimpleFrente(position = game.at(12,16))

const mesadasSimplesFrente = [mesadaSimpleFrente1, mesadaSimpleFrente2, mesadaSimpleFrente3,
                                mesadaSimpleFrente4, mesadaSimpleFrente5]

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

const mesadasSimples = [mesadaSimple1, mesadaSimple2, mesadaSimple3, mesadaSimple4, mesadaSimple5,
    mesadaSimple6, mesadaSimple7, mesadaSimple8, mesadaSimple9, mesadaSimple10,
    mesadaSimple11, mesadaSimple12, mesadaSimple13, mesadaSimple14, mesadaSimple15,
    mesadaSimple16, mesadaSimple17, mesadaSimple18, mesadaSimple19, mesadaSimple20,
    mesadaSimple21, mesadaSimple22, mesadaSimple23, mesadaSimple24, mesadaSimple25,
    mesadaSimple26, mesadaSimple27, mesadaSimple28, mesadaSimple29, mesadaSimple30]

const todasLasMesadas = mesadasSimples + mesadasSimplesFrente

// MESAS CON SARTEN
class MesaConSarten {
    method image() = "mesaConSarten.png"
    const property position
}

const mesaConSarten1 = new MesaConSarten(position = game.at(20,16))
const mesaConSarten2 = new MesaConSarten(position = game.at(22,16))
const mesaConSarten3 = new MesaConSarten(position = game.at(24,16))
const mesaConSarten4 = new MesaConSarten(position = game.at(26,16))

const mesasConSarten = [mesaConSarten1, mesaConSarten2, mesaConSarten3, mesaConSarten4]

// MESAS DE INGREDIENTES
class MesaDeIngrediente {
    const imagen
    method image() = imagen
    const property position
    //Agarrar ingrediente
}

const mesaLechuga = new MesaDeIngrediente(imagen = "mesaLechuga.png", position = game.at(4,8))
const mesaPan = new MesaDeIngrediente(imagen = "mesaPan.png", position = game.at(4,10))
const mesaCarne = new MesaDeIngrediente (imagen = "mesaCarne3.png", position = game.at(4,12))
const mesaTomate = new MesaDeIngrediente (imagen = "mesaTomate2.png", position = game.at(4,14))

class MesaConCuchillo {
    method image() = "mesaConCuchillo.png"
    const property position
}

const mesaConCuchillo1 = new MesaConCuchillo(position = game.at(8,2))
const mesaConCuchillo2 = new MesaConCuchillo(position = game.at(12,2))

const mesasConCuchillos = [mesaConCuchillo1,mesaConCuchillo2]

//RECEPCIÓN
object recepcion {
    method image() = "recepcion2.png"
    const property position = game.at(28,8)
}

// PILETA
object pileta {
    method image() = "pileta.png"
    const property position = game.at(8,16)
}

// BASURA
object basura{
    method image() = "basura.png"
    method position() = game.at(4,4)
}

object flag{
    method position() = game.at(5,5)
}