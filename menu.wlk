//Archivo de menu y materiales
import wollok.game.*
import chefs.*
import nivel.*
import movimiento.*


const menuAdulto =
            new MenuAdulto(recompensa = 100, tiempoDisponible = 50000)
const menuJoven = new MenuJoven(recompensa = 50, tiempoDisponible = 3000)

const menuAnciano = new MenuAnciano(recompensa = 500, tiempoDisponible = 30000)

class Menu{
    const property ingredientes = #{}
    const property recompensa
    const property tiempoDisponible

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

class Ingredientes inherits MovimientoObjetos{
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
                            position = game.at(4,10),
                            movilidad = "flechas")


const lechuga = new IngredientesCortables(imagen = "lechugaChiquita.png",
                                         imagenCortada = "lechugaCortada1.png",
                                         position = game.at(4,8),
                                         movilidad = "flechas")

const tomate = new IngredientesCortables(imagen = "tomateChiquito.png",
                                        imagenCortada = "tomateCortado1.png",
                                        position = game.at(4,14),
                                        movilidad = "flechas")

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
                              position = game.at(4,12),
                              movilidad = "flechas")

class Plato inherits MovimientoObjetos{
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
}


const plato1 = new Plato(imagen = "plato2.png",
                        position = game.at(20,2),
                        movilidad = "flechas",
                        enMovimiento = false)

const plato2 = new Plato(imagen = "plato2.png",
                        position = game.at(22,2),
                        movilidad = "flechas",
                        enMovimiento = false)

const plato3 = new Plato(imagen = "plato2.png",
                        position = game.at(24,2),
                        movilidad = "flechas",
                        enMovimiento = false)

const plato4 = new Plato(imagen = "plato2.png",
                        position = game.at(26,2),
                        movilidad = "flechas",
                        enMovimiento = false)
                        
const plato5 = new Plato(imagen = "plato2.png",
                        position = game.at(28,4),
                        movilidad = "flechas",
                        enMovimiento = false)

const platos = [plato1, plato2, plato3, plato4, plato5]
