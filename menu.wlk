//Archivo de menu y materiales
import wollok.game.*
import chefs.*
import nivel.*

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