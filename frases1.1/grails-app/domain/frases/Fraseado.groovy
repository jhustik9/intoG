package frases

class Fraseado {

    String autor;
    String contenido;
    Date fecha = new Date()

    /*Validaciones para los campos, estas se deben cumplir, estas restricciones
    * le dicen a Grails que autor y contenido no pueden estar en blanco, tener longitud nula ò 0 */
    static constraints = {
        autor(blank:false)
        contenido(maxSize:1000, blank:false)
    }

}
