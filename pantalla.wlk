import wollok.game.*
import chefs.*
import escenario.*
import menu.*
import nivel.*

object go{
    method image() = "go.png"
    var property position = game.at(15,10)
}

object pantalla{
    method empezar(){
        game.width()
        game.height()
		game.addVisual(inicio)
		keyboard.x().onPressDo({nivel.configurate()})game.clear() //Elegir letras
		keyboard.p().onPressDo({game.stop()}) //Elegir letras
    }

    method cambiarPantalla(){
        game.clear()
        game.addVisual(fin)
        keyboard.r().onPressDo({self.empezar()}) //Elegir letras
    }
}

object inicio {
	const property position = game.origin()
	var property imagen = ""

    method mostrarMenu(){
        game.say(self, "Bienvenidos a Overcooked")
        //self.seleccionarJugadores()
        //self.seleccionarNivel()
    }

	method actualizar() {
		imagen = self.imagen()
	}
}

object fin{
    const property position = game.origin()

    var property imagen = ""

    method imagen() =
        if(marcadorDeDinero.dinero() >= 1000){ // o por tiempo
            //imagen victoria
        } else{
            //imagen derrota
        }
    }