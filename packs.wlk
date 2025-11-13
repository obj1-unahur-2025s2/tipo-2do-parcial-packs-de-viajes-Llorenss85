import cordinador.*
import beneficios.*
// completar
class Pack{
    const beneficiosEspeciales =#{}
    var dias
    var precio
    var cordinador
    method  beneficiosEspeciales()=beneficiosEspeciales.size()
    method beneficiosCosto() = beneficiosEspeciales.filter({b=> b.estaVigente()}).sum({b => b.costo()})
    method agregarBeneficio(unBeneficio) {
      beneficiosEspeciales.add(unBeneficio)
    }
    method costoMasCargo() = self.beneficiosCosto() 
    method valorFinal()= (precio + self.costoMasCargo() )
    method esPremium()  
        
}
class Nacional inherits Pack{
    const actividades=#{"holanda"}
    var provinciaDestino 
    override method esPremium()= dias>20 and cordinador.cordinadorCalificado()
}
class Internacional inherits Pack{
    var paisDestino
    var cantEscalas
    var esDeInteres   
    override method valorFinal()=  super() *1.20
    override method esPremium()= esDeInteres and dias >20 and cantEscalas==0
}


class PackProvinciales inherits Nacional{
    const cantCiudades
    override method esPremium()= actividades.size() >= 4 and cantCiudades>5 and   self.beneficiosEspeciales() <3
    override method valorFinal()=super() * 1.05
}