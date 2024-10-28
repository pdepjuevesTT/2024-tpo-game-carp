//Archivo de menu y materiales
import wollok.game.*
import chefs.*

class Ingredientes{
    const imagen
    var property position
    method move(newPosition) {
        position = newPosition
    }
    method image() = imagen
}

class IngredientesSinPreparacion inherits Ingredientes {
    
}

const pan = new IngredientesSinPreparacion(imagen = "panChiquito.png", position = game.at(1,9)) 
const lechuga = new IngredientesSinPreparacion(imagen = "lechugaChiquita.png", position = game.at(0,7))
const carne = new IngredientesSinPreparacion(imagen = "carneChiquita.png", position = game.at(2,11))
const tomate = new IngredientesSinPreparacion(imagen = "tomateChiquito.png", position = game.at(3,13))