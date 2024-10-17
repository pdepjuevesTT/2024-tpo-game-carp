import wollok.game.*
import chefs.*

object nivel {
    method configurate(){
        //CONFIG
        game.title("Overcooked")
        game.height(14)
        game.width(25)
        game.boardGround("fondo.jpg")

        //VISUALES
        game.addVisual(chef)

        //TECLADO

    }
}