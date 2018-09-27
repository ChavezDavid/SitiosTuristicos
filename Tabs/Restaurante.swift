//
//  Restaurante.swift
//  Tabs
//
//  Created by Alumno on 27/09/18.
//  Copyright © 2018 David. All rights reserved.
//

import Foundation
import UIKit

class Restaurante{
    var nombre : String
    var descripcion : String
    var imagen : UIImage
    var puntuacion : Double
    
    init(){
        nombre = ""
        descripcion = ""
        imagen = UIImage()
        puntuacion = 0.0
    }
    
    init(nombre : String, descripcion : String, imagen : UIImage, puntuacion : Double){
        self.nombre = nombre
        self.descripcion = descripcion
        self.imagen = imagen
        self.puntuacion = puntuacion
    }
}
