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

object cartel1{
    method image() = "menuCompleto.png"
    var property position = game.at(30,16)
}

object cartel2{
    method image() = "menuHamburguesaSola.png"
    var property position = game.at(36,16)
}

object cartel3{
    method image() = "MenuHamburguesaConLechuga.png"
    var property position = game.at(30,12)
}