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

        //KEYBOARD
        //Chef 1
        keyboard.up().onPressDo {
            chef1.position(game.at(chef1.position().x(), chef1.position().y() + 1))
        }
        keyboard.down().onPressDo {
            chef1.position(game.at(chef1.position().x(), chef1.position().y() - 1))
        }
        keyboard.left().onPressDo {
            chef1.position(game.at(chef1.position().x() - 1, chef1.position().y()))
        }
        keyboard.right().onPressDo {
            chef1.position(game.at(chef1.position().x() + 1, chef1.position().y()))
        }
        //keyboard.shift().onPressDo{chef1.interactuar()}
        //keyboard.c().onPressDo{chef1.tomar()}

        //Chef 2
        keyboard.w().onPressDo {
            chef2.position(game.at(chef2.position().x(), chef2.position().y() + 1))
        }
        keyboard.s().onPressDo {
            chef2.position(game.at(chef2.position().x(), chef2.position().y() - 1))
        }
        keyboard.a().onPressDo {
            chef2.position(game.at(chef2.position().x() - 1, chef2.position().y()))
        }
        keyboard.d().onPressDo {
            chef2.position(game.at(chef2.position().x() + 1, chef2.position().y()))
        }
        //keyboard.slash().onPressDo{chef2.interactuar()}
        //keyboard.num0().onPressDo{chef2.tomar()}
        
    }
}
