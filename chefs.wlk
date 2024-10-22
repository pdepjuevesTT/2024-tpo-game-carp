//Archvio para chef, tipos de chefs
import wollok.game.*
/* class Chef{
    var property dinero = 0

    method tomarPedidos(){}

    method entregarPedido(){}
} */

object chef{
    var property position = game.at(7,5)
    var direccion = true

    method izquierda() {
        direccion = false
    } 

    method derecha() {
        direccion = true
    }
    
    method image() {
        if (direccion) {
            return "chef1.png"
        }
        else
        {
            return "chef2.png"
        }
    
    }
}
object chef2 {
    var property position = game.at(21,5)

    method move(nuevaPosicion){
        self.position(nuevaPosicion)
    }

    method image() = "chef1.png"
}
