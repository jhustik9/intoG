package frases

import grails.transaction.Transactional

@Transactional
class FraseadoService {

    def serviceMethod() {

    }

    def getStaticFrase() {
        return new Fraseado(autor: "Anonymous",
                contenido: "Real Programmers Don't eat much quicheQuiche, el service responde")
    }

    def getRandomFrase() {

        def allFrases = Fraseado.list() //obtiene uns lista de las frases como objetos
        def randomFrase = null

        if (allFrases.size() > 15) {
            def randomIdx = new Random().nextInt(allFrases.size()) //obtiene un numerp aleatorio
            randomFrase = allFrases[randomIdx] //obtiene la frase aleatoria segun el indice
        }

        else {                      //obtiene la frase estatica
            randomFrase = getStaticFrase()
        }

        return randomFrase
    }


}
