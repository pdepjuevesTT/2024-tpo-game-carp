import movimiento.*
import wollok.game.*
import chefs.*
import ingredientes.*
import escenario.*
import menu.*
import clientes.*
import pantalla.*

object nivel {
    method configurate(){
        //CONFIG
        game.title("Overcooked")
        game.height(20)
        game.width(40)
        game.cellSize(40)
        game.boardGround("piso5.png")

        //DINERO
        game.addVisual(marcadorDeDinero) //Funciona?
        marcadorDeDinero.text()//Funciona?

        //MUSICA
        musica.loop()
        game.schedule(500,{musica.play()})



        //MESADAS SIMPLES
        game.addVisual(mesadaSimple1)
        game.addVisual(mesadaSimple2)
        game.addVisual(mesadaSimple3)
        game.addVisual(mesadaSimple4)
        game.addVisual(mesadaSimple5)
        game.addVisual(mesadaSimple6)
        game.addVisual(mesadaSimple7)
        game.addVisual(mesadaSimple8)
        game.addVisual(mesadaSimple9)
        game.addVisual(mesadaSimple10)
        game.addVisual(mesadaSimple11)
        game.addVisual(mesadaSimple12)
        game.addVisual(mesadaSimple13)
        game.addVisual(mesadaSimple14)
        game.addVisual(mesadaSimple15)
        game.addVisual(mesadaSimple16)
        game.addVisual(mesadaSimple17)
        game.addVisual(mesadaSimple18)
        game.addVisual(mesadaSimple19)
        game.addVisual(mesadaSimple20)
        game.addVisual(mesadaSimple21)
        game.addVisual(mesadaSimple22)
        game.addVisual(mesadaSimple23)
        game.addVisual(mesadaSimple24)
        game.addVisual(mesadaSimple25)
        game.addVisual(mesadaSimple26)
        game.addVisual(mesadaSimple27)
        game.addVisual(mesadaSimple28)
        game.addVisual(mesadaSimple29)     
        game.addVisual(mesadaSimple30)

  
        //MESADAS SIMPLES DE FRENTE
        game.addVisual(mesadaSimpleFrente1)
        game.addVisual(mesadaSimpleFrente2)
        game.addVisual(mesadaSimpleFrente3)
        game.addVisual(mesadaSimpleFrente4)
        game.addVisual(mesadaSimpleFrente5)


        //MESAS CON SARTEN
        game.addVisual(mesaConSarten1)
        game.addVisual(mesaConSarten2)
        game.addVisual(mesaConSarten3)
        game.addVisual(mesaConSarten4)


        //MESAS DE INGREDIENTES
        game.addVisual(mesaLechuga)
        game.addVisual(mesaPan)
        game.addVisual(mesaCarne)
        game.addVisual(mesaTomate)

        //MESAS CON CUCHILLO
        game.addVisual(mesaConCuchillo1)
        game.addVisual(mesaConCuchillo2)

        //PILETA
        game.addVisual(pileta)

        //BASURA
        game.addVisual(basura)

        //RECEPCION
        game.addVisual(recepcion)

	    //PLATOS
        game.addVisual(plato1)
        game.addVisual(plato2)
        game.addVisual(plato3)
        game.addVisual(plato4)
        game.addVisual(plato5)

        //VIDAS
        game.addVisual(vida1)
        game.addVisual(vida2)
        game.addVisual(vida3)

        //CHEFS

        /* const chef1 = new Chef(position = game.at(7,8), imagen = "chef8der.png")
        const chef2 = new Chef(position = game.at(24,8), imagen = "chef8izq.png")
        const chefs = [chef1, chef2] */

        game.addVisual(chef1)
        game.addVisual(chef2)

        //CHEF 1
	    keyboard.left().onPressDo { chef1.imagen("chef8izq.png") }
    	keyboard.right().onPressDo { chef1.imagen("chef8der.png") }

        //CHEF 2
	    keyboard.a().onPressDo { chef2.imagen("chef8izq.png") }
	    keyboard.d().onPressDo { chef2.imagen("chef8der.png") }

        //GO
        game.addVisual(go)
        game.schedule(2000, {game.removeVisual(go)})

    }

    method interacciones(){
        //AGARRAR INGREDIENTES
        game.whenCollideDo(chef1, {elemento =>
            if(chef1.objetoTransportado() == null){
                if (elemento == mesaLechuga) {
                    game.say(chef1, "tengo una lechuga")
                    chef1.tomarObjeto(lechuga)
                    lechuga.imagen("lechugaChiquita.png")
                    lechuga.position(game.at(4,8))
                    game.addVisual(lechuga)

                } else if (elemento == mesaPan) {
                    game.say(chef1, "tengo un pan")
                    chef1.tomarObjeto(pan)
                    pan.position(game.at(4,10))
                    game.addVisual(pan)

                } else if (elemento == mesaCarne) {
                    game.say(chef1, "tengo una carne")
                    chef1.tomarObjeto(carne)
                    carne.imagen("carne.png")
                    carne.position(game.at(4,12))
                    carne.cocinado(false)
                    game.addVisual(carne)

                } else if (elemento == mesaTomate) {
                    game.say(chef1, "tengo un tomate")
                    chef1.tomarObjeto(tomate)
                    tomate.imagen("tomateChiquito.png")
                    tomate.position(game.at(4,14))
                    game.addVisual(tomate)
                }
            }
        })

        //QUITAR OBJETO
        game.whenCollideDo(chef1, { elemento =>
            if (elemento == basura && chef1.objetoTransportado() != null) {
                game.say(chef1, "no tengo nada")
                game.removeVisual(chef1.objetoTransportado())
                chef1.objetoTransportado().sinPreparar(true)
                
                //chef1.objetoTransportado().cocinado(false)
                if (chef1.objetoTransportado().esCortable()){
                    chef1.objetoTransportado().cortado(false)
                }
                chef1.quitarObjeto()

            }
        })

        //CORTAR INGREDIENTES
        game.whenCollideDo(chef1, { mesa =>
            if (mesasConCuchillos.contains(mesa) && (ingredientesCortables.contains(chef1.objetoTransportado()))){
                chef1.objetoTransportado().cortar()
                game.say(chef1, "Lo corto")
            }
        })

        //AGARRAR PLATO
        game.whenCollideDo(chef1, { plato =>
            if(platos.contains(plato)){
                keyboard.space().onPressDo {
                    if(chef1.position() == plato.position()){
                        chef1.tomarObjeto(plato)
                        movimiento.seguirChef(plato, chef1)
                        game.removeVisual(plato)
                        game.addVisual(plato)
                    }
                }
            }
        })

        //PONER INGREDIENTES EN PLATO
        game.whenCollideDo(chef1, { elemento => 
            if(platos.contains(elemento) && chef1.tieneAlgo()){
                if(chef1.objetoTransportado() == pan || 
                (chef1.objetoTransportado() == tomate && tomate.cortado()) || 
                (chef1.objetoTransportado() == lechuga && lechuga.cortado()) ||
                (chef1.objetoTransportado() == carne && carne.cocinado())
                ){
                    elemento.agregarIngrediente(chef1.objetoTransportado())
                    game.say(chef1, "Lo deje en el plato!")
                    game.removeVisual(chef1.objetoTransportado())
                    elemento.mostrarPlato()
                    chef1.objetoTransportado().sinPreparar(true)
                    chef1.quitarObjeto()
                }
            }
        })
        /*game.whenCollideDo(Chef1, {elemento => 
            if(platos)
        })*/

        /*game.whenCollideDo(chef1, { objeto =>
            if (todasLasMesadas.contains(objeto) ){
                return true
            }
        })
        game.whenCollideDo(chef2, { objeto =>
            if (todasLasMesadas.contains(objeto) ){
                return true
            }
        })*/

        //COCINAR INGREDIENTES
        game.whenCollideDo(chef1, {mesa =>
            if(mesasConSarten.contains(mesa) && chef1.objetoTransportado() != null){
                if(chef1.objetoTransportado().esCocinable()){
                    chef1.objetoTransportado().cocinar()
                    game.say(chef1, "Lo cocino")
                }
            }
        })

        //ENTREGAR PLATO
        game.whenCollideDo(chef1, {mesa =>
            if(mesa == recepcion && platos.contains(chef1.objetoTransportado())){
                chef1.objetoTransportado().enMovimiento(false)
                chef1.quitarObjeto()
            }
        })

        game.whenCollideDo(recepcion, {plato =>
           if(platos.contains(plato)){
                if(generarPedido.esCorrecto(plato)){
                    game.say(chef1,"Pedido entregado!")
                    game.onTick(500, "entregando", {plato.irse()})
                    plato.irse()
                    game.say(plato, "entregando")
                    generarPedido.hallar(plato).entregada(true)
                    generarPedido.hallar(plato).cambiarImagen()
                    game.sound("entregaExitosa.mp3").play()
                    marcadorDeDinero.agregarDinero(generarPedido.hallar(plato).recompensa())
                    game.schedule(2000, {game.removeVisual(generarPedido.hallar(plato))
                                         generarPedido.hallar(plato).cambiarImagen()
                                         generarPedido.hallar(plato).entregada(false)
                                         generarPedido.quitar(plato)})
                    

                } else{
                    game.say(chef1,"Pedido incorrecto!")
                    game.sound("error2.mp3").play()
                    game.removeVisual(plato)
                    chef1.perderVidas()
                    vidas.get(chef1.vidas()).perderVida()
                }
           }
        })

        //GENERAR PEDIDOS
        generarPedido.mostrarPedidos()
    }
}