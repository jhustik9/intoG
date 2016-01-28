package frases

import org.codehaus.groovy.grails.test.io.SystemOutAndErrSwapper
import org.springframework.test.web.servlet.result.MockMvcResultMatchers
import org.springsource.loaded.ClassRenamer

class FraseadoController {

    //static defaultAction = "home"
    //static scaffold = true
    //def FraseadoService


    def home(){
       render "<h2>Hola a todos, buenas tardes</h2>"
    }


    def random(){
        /*def staAutor = "Anonymus"
        def staContenido = "Los verdaderos programadores no comen quiche"

       // [autor: staAutor, contenido: staContenido]

       // render (model: [autor: staAutor, contenido: staContenido])

        def staFrase = new Fraseado(autor: staAutor, contenido: staContenido )

        //pasa un objeto del modelo a la vista
        [nuevoObjeto: staFrase]*/

        def allFrases = Fraseado.list() //obtiene uns lista de las frases como objetos

        def randomFrase

        if (allFrases.size() > 4) {
            def randomIdx = new Random().nextInt(allFrases.size()) //obtiene un numerp aleatorio
            randomFrase = allFrases[randomIdx] //obtiene la frase aleatoria segun el indice
        }

        else {                                 //frase estatica si el tamaño de la lista es menor igual a 2
            randomFrase = new Fraseado(autor: "Anonymous",
                    contenido: "Real Programmers Don't eat much Quiche")
        }


        [frase: randomFrase] //pasa el objeto a la vista


    }

    def index() {

        def allFrases = Fraseado.list()

        // render "<h2>Este metodo se ejecuta cuando no se llama a otro</h2>"
        [frases: allFrases]
    }

    def save(){

        def au = request.getParameter("autor")
        def co = request.getParameter("contenido")

        def nuevo = new Fraseado(autor: au, contenido: co)

        if(nuevo.validate()){
            nuevo.save()
            redirect(action: "index")
        }
        else {
            /*nuevo.errors.allErrors.each {
                println(it)
            }*/

           //render view: "create"
            /* Puedes agregar tus propios errores,
            usando los metodos  reject and rejectValue
            nuevo.errors.rejectValue("usuario", "novalido")*/
            nuevo.errors.rejectValue("autor", "el autor es nulo")

            render(view: 'create', model: [user: nuevo])

        }



        /*
        if(au == null && co == null)
            new Fraseado(autor:"anonymus", contenido: "cita por defecto").save()
        else
            new Fraseado(autor:au, contenido: co).save()
        */

        //redirect(action: "index")

        /*  hacer validaciones en el objeto
            hasError
            validate
            Si hay errores se regresa el dominio y el dominio ya trae los errores,
            esos errores deben iterarse con un taglib y presentarse en la vista
        */

    }

    /*Al parecer una vista tiene que tener asociado un metodo*/
    def create(){

    }

    def delete(){
        //def eliminado = Fraseado.findByAutor(request.getParameter("autor"))
        def frase = Fraseado.findById(request.getParameter("id"))

        if(frase != null)
            frase.delete()
    }


    def show(){
        def frase = Fraseado.findById(request.getParameter("id"))

        [f: frase]
    }

    def edit() {

       // def ve = Fraseado.findByAutor(request.getParameter("autor"))
        def fras = Fraseado.findById(request.getParameter("id"))
       // def fras = Fraseado.get(ve.id)

        //redirect(action: "edit")
        [f1:fras]

    }

    def update(){
        def nuevoAutor = request.getParameter("autor")
        def nuevoContenido = request.getParameter("contenido")
        def id = request.getParameter("id")
        def fras = Fraseado.findById(id)

        fras.setAutor(nuevoAutor)
        fras.setContenido(nuevoContenido)

        if(fras != null)
            fras.merge()

        redirect(action: "index")

    }

}
