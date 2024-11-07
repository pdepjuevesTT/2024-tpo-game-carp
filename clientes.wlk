import menu.*
import chefs.*
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

class Adulto inherits Clientes{
    override method hacerPedido() = menuAdulto
}

class Anciano inherits Clientes{
    override method hacerPedido() = menuAnciano
}

class Joven inherits Clientes{
    override method hacerPedido() = menuJoven
}