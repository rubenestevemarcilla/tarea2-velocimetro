//Velocímetro - Rubén Esteve Marcilla

import UIKit

enum Velocidades : Int {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    init(velocidadInicial:Velocidades){
        self = velocidadInicial
    }
}

class Auto{
    var velocidad:Velocidades
    init(){
         self.velocidad = Velocidades(velocidadInicial: Velocidades.Apagado)
    }
    func cambioDeVelocidad() -> (actual : Int, velocidadEncadena : String){
        var estado : String = "Apagado"
        switch velocidad{
            case .Apagado:
                self.velocidad = .VelocidadBaja
                estado = "Velocidad baja"
            case .VelocidadBaja:
                self.velocidad = .VelocidadMedia
                estado = "Velocidad media"
            case .VelocidadMedia:
                self.velocidad = .VelocidadAlta
                estado = "Velocidad alta"
            case .VelocidadAlta:
                self.velocidad = .VelocidadMedia
                estado = "Velocidad media"
            break
        }
        return (self.velocidad.rawValue,estado)
    }
}

var miCoche = Auto()
var velocidad : Int
var estado : String

print ("\(miCoche.velocidad.rawValue), Apagado")
for var i = 0 ; i < 20 ; i++ {
    (velocidad,estado) = miCoche.cambioDeVelocidad()
    print ("\(velocidad) , \(estado)")
}

