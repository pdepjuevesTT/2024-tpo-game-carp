import wollok.game.*
import chefs.*
import escenario.*

object nivel {
    method configurate(){
        //CONFIG
        game.title("Overcooked")
        game.height(20)
        game.width(40)
        game.cellSize(40)
        game.boardGround("piso4.jpg")

        //MUEBLES        
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
  
        game.addVisual(mesadaSimpleFrente1)
        game.addVisual(mesadaSimpleFrente2)
        game.addVisual(mesadaSimpleFrente3)
        game.addVisual(mesadaSimpleFrente4)
        game.addVisual(mesadaSimpleFrente5)

        game.addVisual(mesaConSarten1)
        game.addVisual(mesaConSarten2)
        game.addVisual(mesaConSarten3)
        game.addVisual(mesaConSarten4)

        game.addVisual(mesaLechuga)
        game.addVisual(mesaPan)
        game.addVisual(mesaCarne)
        game.addVisual(mesaTomate)

        game.addVisual(pileta)



        /*game.addVisual(muebleCTabla1)
        game.addVisual(muebleCTabla2)
        game.addVisual(muebleCTabla3)
        game.addVisual(muebleCTabla4)
        game.addVisual(mesadaCPuertas1)
        game.addVisual(mesadaCPuertas2)
        game.addVisual(mesadaCPuertas3)
        game.addVisual(mesadaCPuertas4)
        game.addVisual(mesadaCPuertas5)
        game.addVisual(mesadaCPuertas6)
        game.addVisual(mesadaCPuertas7)
        game.addVisual(mesadaCPuertas8)
        game.addVisual(mesadaCPuertas9)*/
        game.addVisual(basura)

        //VISUALES
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
	    keyboard.a().onPressDo { chef2.move(chef2.position().left(1)) chef2.izquierda()}
	    keyboard.d().onPressDo { chef2.move(chef2.position().right(1)) chef2.derecha()}
        //keyboard.slash().onPressDo{chef2.interactuar()}
        //keyboard.num0().onPressDo{chef2.tomar()}
    }
}
