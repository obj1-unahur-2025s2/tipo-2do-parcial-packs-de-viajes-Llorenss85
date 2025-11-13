class Cordinador{
    var cantViajes
    var estaMotivado
    var añosDeExperiencia
    var rol
    const rolesValidos=#{guia,asistenteLogístico,acompañante}
    method verificarRol(unRol) = rolesValidos.contains(unRol)
    method cambiarRol(unRol) {
      if(self.verificarRol(unRol)){
        rol=unRol
      }
      else{
        self.error("Error, el Rol no es reconocible")
      }
    }
    method cordinadorCalificado() =cantViajes > 20 and rol.calificado(self) 
    method estaMotivado() =estaMotivado 
    method añosDeExperiencia() =añosDeExperiencia 
}

object guia {
  method calificado(unCordinador) = unCordinador.estaMotivado() 
}
object asistenteLogístico {
  method calificado(unCordinador) =unCordinador.añosDeExperiencia()>=3 
}
object acompañante{
  method calicado(uncCordinador){} 
}
