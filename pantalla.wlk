import wollok.game.*
import chefs.*
import escenario.*
import menu.*
import nivel.*

object go{
    method image() = "go.png"
    var property position = game.at(15,10)
}

/* object fin{
    const property position = game.origin()

    var property imagen

    method imagen(){
        return
        if(marcadorDeDinero.dinero() >= 2000){ // o por tiempo
            //imagen victoria
        } else{
            //imagen derrota
        }
    }
} */