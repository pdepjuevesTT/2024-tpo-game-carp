//Archvio para chef, tipos de chefs
import wollok.game.*
import nivel.*
class Chef{
    var property dinero = 0
    var property position
    var direccion = true
    var objetoTransportado = null

    method izquierda() {
        direccion = false
    } 

    method derecha() {
        direccion = true
    }

    method image() {
        if (direccion) {
            return "chef8der.png"
        }
        else
        {
            return "chef8izq.png"
        }    
    }

    method move(nuevaPosicion){
       self.position(nuevaPosicion)
   }

   method tomarObjeto(_objeto){
        if(objetoTransportado == null){
        objetoTransportado = _objeto
        }
   }

   method getObjeto() = objetoTransportado

   method quitarObjeto() {
        objetoTransportado = null
   }
} 

const chef1 = new Chef(position = game.at(7,8))

const chef2 = new Chef(position = game.at(27,8))


/*object h inherits Movimiento(movible = self, movilidad = "flechas"){
    method image() = "carneCocida.png"
    var property position = game.at(5,5)
    method move(nuevaPosicion){
       self.position(nuevaPosicion)
   }
}*/