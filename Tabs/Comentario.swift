//
//  Comentario.swift
//  Tabs
//
//  Created by Alumno on 27/09/18.
//  Copyright © 2018 David. All rights reserved.
//

import Foundation
import UIKit

class Comentario{
    var nombre : String
    var comentario : String
    var puntuacion : Double
    
    init() {
        nombre = ""
        comentario = ""
        puntuacion = 0.0
    }
    
    init(nombre : String, comentario : String, puntuacion : Double){
        self.nombre = nombre
        self.comentario = comentario
        self.puntuacion = puntuacion
    }
}
