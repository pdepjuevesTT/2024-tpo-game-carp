import menu.*
import chefs.*
import nivel.*
//Archivo para clientes, tipos de clientes
import wollok.game.*
class Clientes{
    method hacerPedido()

    method recibirPedido(plato){
        if(plato.completo() //plato con todos los ingredientes de un menu
        && Clientes.hacerPedido().ingredientes() == plato.emplatado()){ //plato con los ingredientes del tipo de cliente
            chef1.dinero() + self.hacerPedido().recompensa()
        } else{
            chef1.say(chef1,"Falta x ingrediente")
        }
    }

    method eliminarPedido(menu){

    }
}
/*
class Adulto inherits Clientes{
    override method hacerPedido() = menuAdulto
}

class Anciano inherits Clientes{
    override method hacerPedido() = menuAnciano
}

class Joven inherits Clientes{
    override method hacerPedido() = menuJoven
}
*/

object generarPedido{
    var property pedido1 = null
    var property pedido2 = null
    var property pedido3 = null
    var property libre1 = true
    var property libre2 = true
    var property libre3 = true

    method pedidoAleatorio(orden){
        if(orden == 1){
            pedido1 = pedidos.filter({elemento => elemento.orden() == orden}).anyOne()
            return pedido1
        } else if(orden == 2){
            pedido2 = pedidos.filter({elemento => elemento.orden() == orden}).anyOne()
            return pedido2
        } else {
            pedido3 = pedidos.filter({elemento => elemento.orden() == orden}).anyOne()
            return pedido3
        }
    }

    method generar(){
        if(libre1){
            self.pedidoAleatorio(1)
            game.addVisual(pedido1)
            libre1 = false
        } else if(libre2){
            self.pedidoAleatorio(2)
            game.addVisual(pedido2)
            libre2 = false
        } else if(libre3){
            self.pedidoAleatorio(3)
            game.addVisual(pedido3)
            libre3 = false
        }
    }
}