//Archvio para chef, tipos de chefs
import wollok.game.*
/* class Chef{
    var property dinero = 0

    method tomarPedidos(){}

    method entregarPedido(){}
} */

object chef{
    var property position = game.center()
    
    method image() = "chef1.png"
}
object chef2 { 
    var property position = game.origin()

    method image() = "chef2.png"
}
