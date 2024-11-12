//Archvio para chef, tipos de chefs
import wollok.game.*
import nivel.*
import movimiento.*
class Chef inherits ObjetoMovible{
    var property dinero = 0
    var property objetoTransportado = null
    var property vidas = 3

   method tomarObjeto(_objeto){
        if(objetoTransportado == null){
            objetoTransportado = _objeto
        }
   }

   method quitarObjeto() {
        objetoTransportado = null
   }

    method tieneAlgo(){
        return objetoTransportado != null
   }

   method perderVidas(){
      vidas = vidas - 1
   }

     /*method pedidoCompletado(plato){
          if(pedido.completo(self.pedidos.first())){
               //Si esta completo?
          }else{
               self.pedidos.remove(plato)
          }
     }*/
}

const chef1 = new Chef(position = game.at(7,8), imagen = "chef8der.png")
        const chef2 = new Chef(position = game.at(24,8), imagen = "chef8izq.png")
        const chefs = [chef1, chef2]


class Vidas{
     const vacia = "vidaVacia.png"
     var property imagen = "vidaLlena.png"
     method image() = imagen
     var property position
     
     method perderVida(){
          imagen = vacia
     }
}

const vida1 = new Vidas(position = game.at(33,17))
const vida2 = new Vidas(position = game.at(35,17))
const vida3 = new Vidas(position = game.at(37,17))

const vidas = [vida1, vida2, vida3]