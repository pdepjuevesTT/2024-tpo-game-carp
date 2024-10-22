import wollok.game.*
import chefs.*
import escenario.*

object nivel {
    method configurate(){
        //CONFIG
        game.title("Overcooked")
        game.height(14)
        game.width(30)
        game.boardGround("piso3.png")

        //MUEBLES
        game.addVisual(muebleCTabla1)
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
        game.addVisual(mesadaCPuertas9)
        game.addVisual(basura) 
        
        //VISUALES
        game.addVisualCharacter(chef1)
        game.addVisualCharacter(chef2)
    }
}
