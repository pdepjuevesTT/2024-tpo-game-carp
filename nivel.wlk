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
        game.addVisual(mesadaSimple31)    
        game.addVisual(mesadaSimple32)
        game.addVisual(mesadaSimple33)
  
        //MESADAS SIMPLES DE FRENTE
        game.addVisual(mesadaSimpleFrente1)
        game.addVisual(mesadaSimpleFrente2)
        game.addVisual(mesadaSimpleFrente3)
        game.addVisual(mesadaSimpleFrente4)
        game.addVisual(mesadaSimpleFrente5)
	game.addVisual(mesadaSimpleFrente6)
        game.addVisual(mesadaSimpleFrente7)
        game.addVisual(mesadaSimpleFrente8)


        //MESAS CON SARTEN
        game.addVisual(mesaConSarten1)
        game.addVisual(mesaConSarten2)
        game.addVisual(mesaConSarten3)

        //MESAS DE INGREDIENTES
        game.addVisual(mesaLechuga)
        game.addVisual(mesaPan)
        game.addVisual(mesaCarne)
        game.addVisual(mesaTomate)

        //MESAS CON CUCHILLO
        game.addVisual(mesaConCuchillo1)

        //PILETA
        game.addVisual(pileta)

        //BASURA
        //game.addVisual(basura)

        //CHEFS
        game.addVisual(chef1)
        game.addVisual(chef2)
        
        //CHEF 1
	    keyboard.left().onPressDo { chef1.imagen("chef8izq.png") }
	    keyboard.right().onPressDo { chef1.imagen("chef8der.png") }
        //keyboard.shift().onPressDo{chef1.interactuar()}
        //keyboard.c().onPressDo{chef1.tomar()}


        //CHEF 2
	    keyboard.a().onPressDo { chef2.cambiarImagen("chef8izq.png") }
	    keyboard.d().onPressDo { chef2.cambiarImagen("chef8der.png") }
        //keyboard.slash().onPressDo{chef2.interactuar()}
        //keyboard.num0().onPressDo{chef2.tomar()}

        //AGARRAR INGREDIENTES
        game.whenCollideDo(chef1, {elemento =>
            if(chef1.objetoTransportado() == null){
                if (elemento == mesaLechuga) {
                    game.say(chef1, "tengo una lechuga")
                    chef1.tomarObjeto(lechuga)
                    lechuga.imagen("lechugaChiquita.png")
                    lechuga.position(game.at(0,7))
                    game.addVisual(lechuga)

                } else if (elemento == mesaPan) {
                    game.say(chef1, "tengo un pan")
                    chef1.tomarObjeto(pan)
                    pan.position(game.at(1,9))
                    game.addVisual(pan)

                } else if (elemento == mesaCarne) {
                    game.say(chef1, "tengo una carne")
                    chef1.tomarObjeto(carne)
                    carne.imagen("carne.png")
                    carne.position(game.at(2,11))
                    game.addVisual(carne)

                } else if (elemento == mesaTomate) {
                    game.say(chef1, "tengo un tomate")
                    chef1.tomarObjeto(tomate)
                    tomate.imagen("tomateChiquito.png")
                    tomate.position(game.at(3,13))
                    game.addVisual(tomate)
                }
            }
        })

        //QUITAR OBJETO
        game.whenCollideDo(chef1, { elemento =>
            if (elemento == basura && chef1.objetoTransportado() != null) {
                game.say(chef1, "no tengo nada")
                game.removeVisual(chef1.objetoTransportado())
                chef1.objetoTransportado().sinPreparar(true)
                //chef1.objetoTransportado().cortado(false)
                chef1.quitarObjeto()
            }
        })

        //CORTAR INGREDIENTES
        game.whenCollideDo(chef1, { mesa =>
            if (mesasConCuchillos.contains(mesa) && (ingredientesCortables.contains(chef1.objetoTransportado()))){
                chef1.objetoTransportado().cortar()
            }
        })

        //AGARRAR PLATO
        game.whenCollideDo(chef1, { plato =>
            if(platos.contains(plato) && chef1.objetoTransportado() == null){
            chef1.tomarObjeto(plato)
            }
        })
        //PONER INGREDIENTES EN PLATO
        game.whenCollideDo(chef1, { elemento => if(elemento == Plato && chef1.objetoTransportado() != null){
            Plato.agregarIngrediente(chef1.objetoTransportado())
            game.say(chef1, "Lo deje en el plato!")
            chef1.objetoTransportado().position(Plato.position())//posicion del objeto en la del plato
            game.addVisual(chef1.objetoTransportado())
            chef1.quitarObjeto()
        }})

    }
}

class Movimiento{
    var property imagen
    method image() = imagen
    var property position
    const movilidad

    method move(nuevaPosicion){
        self.position(nuevaPosicion)
    }
    method configurate(){

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
