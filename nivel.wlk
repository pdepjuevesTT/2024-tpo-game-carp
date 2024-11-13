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
        //y=2
        const mesadaSimple2 = #{4,6,10,14,18,20,22,24,26,28}
        (2..30).forEach({x =>
            if(mesadaSimple2.contains(x))
                {game.addVisual(new MesadaSimple(position = game.at(x, 2)))}
            })
        //y=4
        const mesadaSimple4 = #{14,18,28}
        (12..30).forEach({x =>
            if(mesadaSimple4.contains(x))
                {game.addVisual(new MesadaSimple(position = game.at(x, 4)))}
            })
        //y=6
        const mesadaSimple6 = #{4,14,18,28}
        (2..30).forEach({x =>
            if(mesadaSimple6.contains(x))
                {game.addVisual(new MesadaSimple(position = game.at(x, 6)))}
            })
        //y=8
        const mesadaSimple8 = #{14,16,18,28}
        (2..30).forEach({x =>
            if(mesadaSimple8.contains(x))
                {game.addVisual(new MesadaSimple(position = game.at(x, 8)))}
            })
        //y=10
        const mesadaSimple10 = #{28}
        (2..30).forEach({x =>
            if(mesadaSimple10.contains(x))
                {game.addVisual(new MesadaSimple(position = game.at(x, 10)))}
            })
        //y=12
        const mesadaSimple12 = #{28}
        (2..30).forEach({x =>
            if(mesadaSimple12.contains(x))
                {game.addVisual(new MesadaSimple(position = game.at(x, 12)))}
            })
        //y=14
        const mesadaSimple14 = #{14,18,28}
        (2..30).forEach({x =>
            if(mesadaSimple14.contains(x))
                {game.addVisual(new MesadaSimple(position = game.at(x, 14)))}
            })
        //y=16
        const mesadaSimple16 = #{4,14,18,28}
        (2..30).forEach({x =>
            if(mesadaSimple16.contains(x))
                {game.addVisual(new MesadaSimple(position = game.at(x, 16)))}
            })


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
            if(platos.contains(plato) && chef1.objetoTransportado() == null){
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
                                         generarPedido.hallar(plato).entregada(false)
                                         generarPedido.hallar(plato).cambiarImagen()
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

        //APOYAR PLATO
        game.whenCollideDo(chef1, {mesa =>
            if((mesadasSimplesFrente.contains(mesa) || mesadasSimples.contains(mesa)) && platos.contains(chef1.objetoTransportado())){
                keyboard.space().onPressDo{
                    mesa.apoyarPlato(chef1.objetoTransportado())
                }
            }
        })

        //GENERAR PEDIDOS
        generarPedido.mostrarPedidos()
    }
}