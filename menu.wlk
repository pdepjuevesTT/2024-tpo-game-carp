//Archivo de menu y materiales
import wollok.game.*
import chefs.*
import nivel.*

class Ingredientes inherits Movimiento{
    
}


const pan = new Movimiento(imagen = "panChiquito.png", 
                                           position = game.at(1,9),
                                           movilidad = "flechas")


const lechuga = new Movimiento(imagen = "lechugaChiquita.png", 
                                           position = game.at(0,7), 
                                           movilidad = "flechas")
                                           
const carne = new Movimiento(imagen = "carneChiquita.png", 
                                           position = game.at(2,11), 
                                           movilidad = "flechas")
const tomate = new Movimiento(imagen = "tomateChiquito.png", 
                                           position = game.at(3,13),
                                           movilidad = "flechas")