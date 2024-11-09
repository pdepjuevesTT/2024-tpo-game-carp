//Archvio para chef, tipos de chefs
import wollok.game.*
import nivel.*
import movimiento.*
class Chef inherits ObjetoMovible{
    var property dinero = 0
    var property objetoTransportado = null

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
