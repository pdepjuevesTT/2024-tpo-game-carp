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

    //method tiempoLimite(){self.schedule(tiempoDisponible, Clientes.eliminarPedido(self))}//schedule(milliseconds, action)

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

class IngredientesCocinables inherits Ingredientes{
    var property crudo = true
    var property tiempoCoccion
    var property imagenCocinada
    var property imagenQuemada

    /*method cocinar(){
        if(self.cocinar().start() < tiempoCoccion && crudo){ //que arranque el tiempo cuando empieza a cocinar
            imagen = imagenCocinada
            game.addVisual(self)
        } else{
            imagen = imagenQuemada
        }

    }*/
}



const pan = new Ingredientes(imagen = "panChiquito.png",
                            position = game.at(4,8),
                            movilidad = "flechas")


const lechuga = new IngredientesCortables(imagen = "lechugaChiquita.png",
                                         imagenCortada = "lechugaCortada1.png",
                                         position = game.at(4,6),
                                         movilidad = "flechas")

const tomate = new IngredientesCortables(imagen = "tomateChiquito.png",
                                        imagenCortada = "tomateCortado1.png",
                                        position = game.at(4,12),
                                        movilidad = "flechas")

const carne = new IngredientesCortables(imagen = "carne.png",
                                       imagenCortada = "carneChiquita.png",
                                       position = game.at(4,10),
                                       movilidad = "flechas")

const ingredientesCortables = [lechuga, tomate, carne]

class Plato inherits Movimiento{
    var property emplatado = #{} //ingredientes que contiene un plato

    method completo(menu) = self.emplatado().all(menu.ingredientes())

    method agregarIngrediente(ingrediente){
        emplatado.add(ingrediente)
    }

    method mostrarIngrediente(elemento){
        if (elemento == pan){
            imagen = "platoConPan.png"
        } else if (elemento == lechuga){
            imagen = "platoConLechuga.png"
        } else if (elemento == carne){
            imagen = "platoConCarne.png"
        } else if (elemento == tomate){
            imagen = "platoConTomate.png"
        }
    }
}


const plato1 = new Plato(imagen = "plato2.png",
                        position = game.at(22,2),
                        movilidad = "flechas")

const plato2 = new Plato(imagen = "plato2.png",
                        position = game.at(24,2),
                        movilidad = "flechas")

const plato3 = new Plato(imagen = "plato2.png",
                        position = game.at(26,2),
                        movilidad = "flechas")

const plato4 = new Plato(imagen = "plato2.png",
                        position = game.at(28,2),
                        movilidad = "flechas")
                        
const plato5 = new Plato(imagen = "plato2.png",
                        position = game.at(30,2),
                        movilidad = "flechas")

const platos = [plato1, plato2, plato3, plato4, plato5]
