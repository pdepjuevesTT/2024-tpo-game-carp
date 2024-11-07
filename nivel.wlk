import wollok.game.*
import chefs.*
import escenario.*
import menu.*

object nivel {
    method configurate(){
        //CONFIG
        game.title("Overcooked")
        game.height(20)
        game.width(40)
        game.cellSize(40)
        game.boardGround("piso5.png")

        // MUEBLES

        //MESADAS SIMPLES
        game.addVisual(mesadaSimple1)    
        game.addVisual(mesadaSimple2)
        game.addVisual(mesadaSimple3)
        game.addVisual(mesadaSimple4)
        game.addVisual(mesadaSimple5)
        game.addVisual(mesadaSimple6)
        game.addVisual(mesadaSimple7)
        game.addVisual(mesadaSimple8)
        game.addVisual(mesadaSimple9)
        game.addVisual(mesadaSimple10)
        game.addVisual(mesadaSimple11)
        game.addVisual(mesadaSimple12)
        game.addVisual(mesadaSimple13)
        game.addVisual(mesadaSimple14)
        game.addVisual(mesadaSimple15)
        game.addVisual(mesadaSimple16)
        game.addVisual(mesadaSimple17)
        game.addVisual(mesadaSimple18)
        game.addVisual(mesadaSimple19)
        game.addVisual(mesadaSimple20)
        game.addVisual(mesadaSimple21)
        game.addVisual(mesadaSimple22)
        game.addVisual(mesadaSimple23)
        game.addVisual(mesadaSimple24)
        game.addVisual(mesadaSimple25)
        game.addVisual(mesadaSimple26)
        game.addVisual(mesadaSimple27)
        game.addVisual(mesadaSimple28)
        game.addVisual(mesadaSimple29)     
        game.addVisual(mesadaSimple30)

  
        //MESADAS SIMPLES DE FRENTE
        game.addVisual(mesadaSimpleFrente1)
        game.addVisual(mesadaSimpleFrente2)
        game.addVisual(mesadaSimpleFrente3)
        game.addVisual(mesadaSimpleFrente4)
        game.addVisual(mesadaSimpleFrente5)


        //MESAS CON SARTEN
        game.addVisual(mesaConSarten1)
        game.addVisual(mesaConSarten2)
        game.addVisual(mesaConSarten3)
        game.addVisual(mesaConSarten4)


        //MESAS DE INGREDIENTES
        game.addVisual(mesaLechuga)
        game.addVisual(mesaPan)
        game.addVisual(mesaCarne)
        game.addVisual(mesaTomate)

        //MESAS CON CUCHILLO
        game.addVisual(mesaConCuchillo1)
        game.addVisual(mesaConCuchillo2)

        //PILETA
        game.addVisual(pileta)

        //BASURA
        game.addVisual(basura)

	//PLATOS
        game.addVisual(plato1)
        game.addVisual(plato2)
        game.addVisual(plato3)
        game.addVisual(plato4)
        game.addVisual(plato5)

        //CHEFS
        game.addVisual(chef1)
        game.addVisual(chef2)
        
        //CHEF 1
	keyboard.left().onPressDo { chef1.imagen("chef8izq.png") }
	keyboard.right().onPressDo { chef1.imagen("chef8der.png") }
        //keyboard.shift().onPressDo{chef1.interactuar()}
        //keyboard.c().onPressDo{chef1.tomar()}


        //CHEF 2
	keyboard.a().onPressDo { chef2.imagen("chef8izq.png") }
	keyboard.d().onPressDo { chef2.imagen("chef8der.png") }
        //keyboard.slash().onPressDo{chef2.interactuar()}
        //keyboard.num0().onPressDo{chef2.tomar()}

        //AGARRAR INGREDIENTES
        game.whenCollideDo(chef1, {elemento =>
            if(chef1.objetoTransportado() == null){
                if (elemento == mesaLechuga) {
                    game.say(chef1, "tengo una lechuga")
                    chef1.tomarObjeto(lechuga)
                    lechuga.imagen("lechugaChiquita.png")
                    lechuga.position(game.at(4,8))
                    game.addVisual(lechuga)

                } else if (elemento == mesaPan) {
                    game.say(chef1, "tengo un pan")
                    chef1.tomarObjeto(pan)
                    pan.position(game.at(4,10))
                    game.addVisual(pan)

                } else if (elemento == mesaCarne) {
                    game.say(chef1, "tengo una carne")
                    chef1.tomarObjeto(carne)
                    carne.imagen("carne.png")
                    carne.position(game.at(4,12))
                    game.addVisual(carne)

                } else if (elemento == mesaTomate) {
                    game.say(chef1, "tengo un tomate")
                    chef1.tomarObjeto(tomate)
                    tomate.imagen("tomateChiquito.png")
                    tomate.position(game.at(4,14))
                    game.addVisual(tomate)
                }
            }
        })

        //QUITAR OBJETO
        game.whenCollideDo(chef1, { elemento =>
            if (elemento == basura && chef1.objetoTransportado() != null) {
                game.say(chef1, "no tengo nada")
                game.removeVisual(chef1.objetoTransportado())
                chef1.quitarObjeto()
                chef1.objetoTransportado().sinPreparar(true)
                chef1.objetoTransportado().cortado(false)
            }
        })

        //CORTAR INGREDIENTES
        game.whenCollideDo(chef1, { mesa =>
            if (mesasConCuchillos.contains(mesa) && (ingredientesCortables.contains(chef1.objetoTransportado()))){
                chef1.objetoTransportado().cortar()
            }
        })

        //AGARRAR PLATO
        /*game.whenCollideDo(chef1, { plato =>
            if(platos.contains(plato) && chef1.objetoTransportado() == null){
            chef1.tomarObjeto(plato)
            }
        })*/

        //PONER INGREDIENTES EN PLATO
        game.whenCollideDo(chef1, { elemento => 
            if(platos.contains(elemento) && chef1.tieneAlgo()){
                elemento.agregarIngrediente(chef1.objetoTransportado())
                game.say(chef1, "Lo deje en el plato!")
                game.removeVisual(chef1.objetoTransportado())
                elemento.mostrarIngrediente(chef1.objetoTransportado())
                chef1.quitarObjeto()
            }
        })

    }
}

class Movimiento{
    var property imagen
    method image() = imagen
    var property position
    const movilidad
    var property enMovimiento = true

    method move(nuevaPosicion){
        self.position(nuevaPosicion)
    }
    method configurate(){
	if(enMovimiento){
            if(movilidad == "flechas"){
            	keyboard.up().onPressDo { self.move(self.position().up(1)) }
	        keyboard.down().onPressDo { self.move(self.position().down(1)) }
	        keyboard.left().onPressDo { self.move(self.position().left(1)) }
	        keyboard.right().onPressDo { self.move(self.position().right(1)) }
            } else if(movilidad == "wasd"){
            	keyboard.w().onPressDo { self.move(self.position().up(1)) }
	        keyboard.s().onPressDo { self.move(self.position().down(1)) }
	        keyboard.a().onPressDo { self.move(self.position().left(1)) }
	        keyboard.d().onPressDo { self.move(self.position().right(1)) }
            }
        }
    }
}
