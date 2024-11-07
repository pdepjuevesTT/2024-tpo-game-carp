import wollok.game.*
import chefs.*
import escenario.*
import menu.*
import nivel.*
class Movimiento{
    var property imagen
    method image() = imagen
    var property position
    const movilidad
    var property enMovimiento = true

    method move(nuevaPosicion){
        self.position(nuevaPosicion)
    }
    method configurate(){
	    if(enMovimiento){
            if(movilidad == "flechas"){
                keyboard.up().onPressDo { if(self.position().y()==11 && self.position().x()>=13 && self.position().x()<=18){/*Nada*/} else{ self.move(self.position().up(1))} }
	            keyboard.down().onPressDo {if(self.position().y()==10 && self.position().x()>=13 && self.position().x()<=18){/*Nada*/} else{ self.move(self.position().down(1))} }
	            keyboard.left().onPressDo { if(self.position().x()==19 && self.position().y()<10 && self.position().y()>11){/*Nada*/} else{ self.move(self.position().left(1))}  }
                keyboard.right().onPressDo { if(self.position().x()==13 && self.position().y()<10 && self.position().y()>11){/*Nada*/} else{ self.move(self.position().right(1))} }
            } else if(movilidad == "wasd"){
            	keyboard.w().onPressDo { if(self.position().y()==11 && self.position().x()>=13 && self.position().x()<=18){/*Nada*/} else{ self.move(self.position().up(1))}  }
	            keyboard.s().onPressDo { if(self.position().y()==10 && self.position().x()>=13 && self.position().x()<=18){/*Nada*/} else{ self.move(self.position().down(1))} }
	            keyboard.a().onPressDo { if(self.position().x()==19 && self.position().y()<10 && self.position().y()>11){/*Nada*/} else{ self.move(self.position().left(1))}  }
	            keyboard.d().onPressDo { if(self.position().x()==13 && self.position().y()<10 && self.position().y()>11){/*Nada*/} else{ self.move(self.position().right(1))} }
            }
        }
    }
}
// Para abajo deberia poder ir siempre menos entre 14<=x<=19 && y=10
// Para la derecha deberia poder ir menos entre y<=9 && y>=12 && x=12
class MovimientoObjetos inherits Movimiento{
    override method configurate(){
       if(enMovimiento){
            if(movilidad == "flechas"){
            	keyboard.up().onPressDo { self.move(chef1.position()) }
	            keyboard.down().onPressDo { self.move(chef1.position()) }
	            keyboard.left().onPressDo { self.move(chef1.position()) }
	            keyboard.right().onPressDo { self.move(chef1.position()) }
            } else if(movilidad == "wasd"){
            	keyboard.w().onPressDo { self.move(chef2.position().up(1)) }
	            keyboard.s().onPressDo { self.move(chef2.position().down(1)) }
	            keyboard.a().onPressDo { self.move(chef2.position().left(1)) }
	            keyboard.d().onPressDo { self.move(chef2.position().right(1)) }
            }
        } 
    }
}