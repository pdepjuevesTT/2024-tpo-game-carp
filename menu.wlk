//Archivo de menu y materiales
import wollok.game.*
import chefs.*
import nivel.*

const menuAdulto =
            new MenuAdulto(recompensa = 100, tiempoDisponible = 50000)
const menuJoven = new MenuJoven(recompensa = 50, tiempoDisponible = 3000)

const menuAnciano = new MenuAnciano(recompensa = 500, tiempoDisponible = 30000)

class Menu{
    const property ingredientes = #{}
    const property recompensa
    const property tiempoDisponible

    method tiempoLimite(){self.schedule(tiempoDisponible, Clientes.eliminarPedido(self))}//schedule(milliseconds, action)

}

class MenuAdulto inherits Menu{
    override method ingredientes() = #{carne, lechuga, tomate}

}

class MenuJoven inherits Menu{
    override method ingredientes() = #{pan, carne}
}

class MenuAnciano inherits Menu{
    override method ingredientes() = #{carne}
}

class Ingredientes inherits Movimiento{
    var property sinPreparar = true

}

class IngredientesCortables inherits Ingredientes {
    var property cortado = false
    var property imagenCortada

    method cortar(){
        if(sinPreparar){
            sinPreparar = false
            cortado = true
            imagen = imagenCortada
        }
    }
}



const pan = new Ingredientes(imagen = "panChiquito.png", 
                            position = game.at(1,9),
                            movilidad = "flechas")


const lechuga = new IngredientesCortables(imagen = "lechugaChiquita.png", 
                                         imagenCortada = "lechugaCortada1.png",
                                         position = game.at(0,7), 
                                         movilidad = "flechas")

const tomate = new IngredientesCortables(imagen = "tomateChiquito.png", 
                                        imagenCortada = "tomateCortado1.png",
                                        position = game.at(3,13),
                                        movilidad = "flechas")

const carne = new IngredientesCortables(imagen = "carne.png", 
                                       imagenCortada = "carneChiquita.png",
                                       position = game.at(2,11), 
                                       movilidad = "flechas")

const ingredientesCortables = [lechuga, tomate, carne]

class Plato inherits Movimiento{
    //method completo(menu) = self.emplatado().all(menu.ingredientes())
}

const plato1 = new Plato(imagen = "plato2.png",
                        position = game.at(5,5),
                        movilidad = "flechas")

const platos = [plato1]