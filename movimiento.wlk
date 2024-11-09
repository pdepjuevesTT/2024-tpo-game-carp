import wollok.game.*
import chefs.*
import escenario.*
import menu.*
import nivel.*

class ObjetoMovible{
    var property imagen
    method image() = imagen
    var property position
    var property enMovimiento = true

    method move(nuevaPosicion){
        if(enMovimiento){
            self.position(nuevaPosicion)
        }
    }
}

object movimiento{
    method flechas(personaje){
        keyboard.up().onPressDo { if(personaje.position().y()==11 && personaje.position().x()>=13 && personaje.position().x()<=18){/*Nada*/} else{ personaje.move(personaje.position().up(1))} }
	    keyboard.down().onPressDo {if(personaje.position().y()==10 && personaje.position().x()>=13 && personaje.position().x()<=18){/*Nada*/} else{ personaje.move(personaje.position().down(1))} }
	    keyboard.left().onPressDo { if(personaje.position().x()==19 && personaje.position().y()<10 && personaje.position().y()>11){/*Nada*/} else{ personaje.move(personaje.position().left(1))}  }
        keyboard.right().onPressDo { if(personaje.position().x()==13 && personaje.position().y()<10 && personaje.position().y()>11){/*Nada*/} else{ personaje.move(personaje.position().right(1))} }
    }

    method wasd(personaje){
        keyboard.w().onPressDo { if(personaje.position().y()==11 && personaje.position().x()>=13 && personaje.position().x()<=18){/*Nada*/} else{ personaje.move(personaje.position().up(1))}  }
	    keyboard.s().onPressDo { if(personaje.position().y()==10 && personaje.position().x()>=13 && personaje.position().x()<=18){/*Nada*/} else{ personaje.move(personaje.position().down(1))} }
	    keyboard.a().onPressDo { if(personaje.position().x()==19 && personaje.position().y()<10 && personaje.position().y()>11){/*Nada*/} else{ personaje.move(personaje.position().left(1))}  }
	    keyboard.d().onPressDo { if(personaje.position().x()==13 && personaje.position().y()<10 && personaje.position().y()>11){/*Nada*/} else{ personaje.move(personaje.position().right(1))} }
    }

    method seguirChef(elemento, chef){
        keyboard.up().onPressDo { elemento.move(chef.position()) }
	    keyboard.down().onPressDo { elemento.move(chef.position()) }
	    keyboard.left().onPressDo { elemento.move(chef.position()) }
	    keyboard.right().onPressDo { elemento.move(chef.position()) }
    }

    method quedarseQuieto(elemento){
        keyboard.up().onPressDo {elemento.move(elemento.position().right(1))}
	    keyboard.down().onPressDo {elemento.move(elemento.position().right(1))}
	    keyboard.left().onPressDo {elemento.move(elemento.position().right(1))}
	    keyboard.right().onPressDo {elemento.move(elemento.position().right(1))}
    }
}

// Para abajo deberia poder ir siempre menos entre 14<=x<=19 && y=10
// Para la derecha deberia poder ir menos entre y<=9 && y>=12 && x=12

/*class MovimientoObjetos inherits ObjetoMovible{
    method seguirChef(chef){
        keyboard.up().onPressDo { self.move(chef.position()) }
	    keyboard.down().onPressDo { self.move(chef.position()) }
	    keyboard.left().onPressDo { self.move(chef.position()) }
	    keyboard.right().onPressDo { self.move(chef.position()) }
    }

    method quedarseQuieto(){
        keyboard.up().onPressDo {self.move(self.position().right(1))}
	    keyboard.down().onPressDo {self.move(self.position().right(1))}
	    keyboard.left().onPressDo {self.move(self.position().right(1))}
	    keyboard.right().onPressDo {self.move(self.position().right(1))}
    }
}*/