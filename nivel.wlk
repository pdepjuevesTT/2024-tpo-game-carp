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
        game.boardGround("piso4.jpg")

        //MUEBLES        
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

        //PILETA
        game.addVisual(pileta)

        //BASURA
        game.addVisual(basura)

        //CHEFS
        game.addVisualCharacter(chef1)
        game.addVisual(chef2)

        //KEYBOARD
        
        //Chef 1
	    keyboard.left().onPressDo { chef1.izquierda() }
	    keyboard.right().onPressDo { chef1.derecha() }
        //keyboard.shift().onPressDo{chef1.interactuar()}
        //keyboard.c().onPressDo{chef1.tomar()}


        //Chef 2
        keyboard.w().onPressDo { chef2.move(chef2.position().up(1)) }
	    keyboard.s().onPressDo { chef2.move(chef2.position().down(1)) }
	    keyboard.a().onPressDo { chef2.move(chef2.position().left(1)) 
                                chef2.izquierda()}
	    keyboard.d().onPressDo { chef2.move(chef2.position().right(1)) 
                                chef2.derecha()}
        //keyboard.slash().onPressDo{chef2.interactuar()}
        //keyboard.num0().onPressDo{chef2.tomar()}

        //Tomar ingrediente
        game.whenCollideDo(chef1, {elemento =>
            if(chef1.getObjeto() == null){
                if (elemento == mesaLechuga) {
                    game.say(chef1, "tengo una lechuga")
                    chef1.tomarObjeto(lechuga)
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
                    carne.position(game.at(2,11))
                    game.addVisual(carne)
                
                } else if (elemento == mesaTomate) {
                    game.say(chef1, "tengo un tomate")
                    chef1.tomarObjeto(tomate)
                    tomate.position(game.at(3,13))
                    game.addVisual(tomate)
                }
            }
        })

        //Movimiento de ingredientes

        
        //Quitar objeto
        game.whenCollideDo(chef1, { elemento =>
            if (elemento == basura && chef1.getObjeto() != null) {
                game.say(chef1, "no tengo nada")
                game.removeVisual(chef1.getObjeto())
                chef1.quitarObjeto()
            }
        })

    }
}

class Movimiento{
    const imagen
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