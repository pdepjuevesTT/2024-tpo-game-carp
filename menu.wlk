//Archivo de menu y materiales
import wollok.game.*
import chefs.*
import nivel.*
import movimiento.*

class Menu{
    const property ingredientes
    const property recompensa
    const property tiempoDisponible
    var property imagen
    const property imagenEntregada
    const property orden
    var property position

    method image() = imagen

    method moverse() {
        position = position.left(1)
    }

    method entregado(){
        imagen = imagenEntregada
    }
}

class MenuAdulto inherits Menu(imagen = "menuCompleto1.png",
                              imagenEntregada = "menuCompletoEntregada.png",
                              ingredientes = #{pan, carne, lechuga, tomate},
                              recompensa = 500,
                              tiempoDisponible = 50000){}

class MenuJoven inherits Menu(imagen = "menuHamburguesaSola1.png",
                             imagenEntregada = "menuHamburguesaSolaEntregada1.png",
                             ingredientes = #{pan, carne},
                             recompensa = 50,
                             tiempoDisponible = 3000){}

class MenuAnciano inherits Menu(imagen = "MenuHamburguesaConLechuga1.png",
                               imagenEntregada = "MenuHamburguesaConLechugaEntregada.png",
                               ingredientes = #{pan, carne, lechuga},
                               recompensa = 100,
                               tiempoDisponible = 30000){}

//Buscar una forma para generar los objetos con un method
const menuAdulto1 = new MenuAdulto(position = game.at(5,17), orden = 1)
const menuAdulto2 = new MenuAdulto(position = game.at(10,17), orden = 2)
const menuAdulto3 = new MenuAdulto(position = game.at(15,17), orden = 3)
const menuJoven1 = new MenuJoven(position = game.at(5,17), orden = 1)
const menuJoven2 = new MenuJoven(position = game.at(10,17), orden = 2)
const menuJoven3 = new MenuJoven(position = game.at(15,17), orden = 3)
const menuAnciano1 = new MenuAnciano(position = game.at(5,17), orden = 1)
const menuAnciano2 = new MenuAnciano(position = game.at(10,17), orden = 2)
const menuAnciano3 = new MenuAnciano(position = game.at(15,17), orden = 3)

const pedidos = #{menuAdulto1, menuAdulto2, menuAdulto3 ,menuJoven1, menuJoven2, menuJoven3, menuAnciano1, menuAnciano2, menuAnciano3}

class Ingredientes inherits ObjetoMovible{
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
                            position = game.at(4,10))


const lechuga = new IngredientesCortables(imagen = "lechugaChiquita.png",
                                         imagenCortada = "lechugaCortada1.png",
                                         position = game.at(4,8))

const tomate = new IngredientesCortables(imagen = "tomateChiquito.png",
                                        imagenCortada = "tomateCortado1.png",
                                        position = game.at(4,14))

const ingredientesCortables = [lechuga, tomate, carne]

class Hamburguesa inherits IngredientesCortables{
    var property cocinado = false
    //var property tiempoCoccion
    var property imagenCocinada
    //var property imagenQuemada

    method cocinar(){
        if(!cocinado && cortado){ //que arranque el tiempo cuando empieza a cocinar
            cocinado = true
            imagen = imagenCocinada
        }

    }
}

const carne = new Hamburguesa (imagen = "carne.png",
                              imagenCortada = "carneChiquita.png",
                              imagenCocinada = "carneCocida1.png",
                              position = game.at(4,12))

class Plato inherits ObjetoMovible{
    var property emplatado = #{} //ingredientes que contiene un plato

    method completo(menu) = self.emplatado().all(menu.ingredientes())

    method agregarIngrediente(ingrediente){
        emplatado.add(ingrediente)
    }

    method mostrarPlato(){
        if (emplatado == #{pan}){
            imagen = "platoConPan.png"
        } else if (emplatado == #{lechuga}){
            imagen = "platoConLechuga1.png"
        } else if (emplatado == #{carne}){
            imagen = "platoConHamburguesa.png"
        } else if (emplatado == #{tomate}){
            imagen = "platoConTomate1.png"
        } else if (emplatado == #{pan, lechuga}){
            imagen = "panConLechuga.png"
        } else if (emplatado == #{pan, tomate}){
            imagen = "panConTomate.png"
        } else if (emplatado == #{pan, carne}){
            imagen = "panConHamburguesa.png"
        } else if (emplatado == #{lechuga, carne}){
            imagen = "platoConHamburguesaYLechuga.png"
        } else if (emplatado == #{lechuga, tomate}){
            imagen = "platoConTomateYLechuga.png"
        } else if (emplatado == #{carne, tomate}){
            imagen = "platoConHamburguesaYTomate.png"
        } else if (emplatado == #{pan, lechuga, tomate}){
            imagen = "panConLechugaYTomate.png"
        } else if (emplatado == #{pan, lechuga, carne}){
            imagen = "panConHamburguesaYLechuga.png"
        } else if (emplatado == #{pan, tomate, carne}){
            imagen = "panConHamburguesaYTomate.png"
        } else if (emplatado == #{lechuga, tomate, carne}){
            imagen = "platoConCompletaSinPan.png"
        } else if (emplatado == #{pan, lechuga, tomate, carne}){
            imagen = "hamburguesaCompleta.png"
        }
    }

    method irse(){
        position = position.right(1)
    }
}


const plato1 = new Plato(imagen = "plato2.png",
                        position = game.at(20,2))

const plato2 = new Plato(imagen = "plato2.png",
                        position = game.at(22,2))

const plato3 = new Plato(imagen = "plato2.png",
                        position = game.at(24,2))

const plato4 = new Plato(imagen = "plato2.png",
                        position = game.at(26,2))

const plato5 = new Plato(imagen = "plato2.png",
                        position = game.at(28,4))

const platos = [plato1, plato2, plato3, plato4, plato5]
