//Archvio para chef, tipos de chefs
import wollok.game.*
class Chef{
    var property dinero = 0
    var property position
    var direccion = true

    method izquierda() {
        direccion = false
    } 

    method derecha() {
        direccion = true
    }

    method tomarPedidos(){}

    method entregarPedido(){}

    method image() {
        if (direccion) {
            return "chef1.png"
        }
        else
        {
            return "chef2.png"
        }    
    }

    method move(nuevaPosicion){
       self.position(nuevaPosicion)
   }
} 

const chef1 = new Chef(position = game.at(7,5))

const chef2 = new Chef(position = game.at(21,5))