//
//  DetalleRestauranteController.swift
//  Tabs
//
//  Created by Alumno on 27/09/18.
//  Copyright © 2018 David. All rights reserved.
//

import Foundation
import UIKit

class DetalleRestauranteController : UIViewController{
    
    var restaurante : Restaurante?
    
    @IBOutlet weak var imgRestaurante: UIImageView!
    @IBOutlet weak var lblDescripcion: UILabel!
    @IBOutlet weak var lblPuntuacion: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let restauranteActual = restaurante{
            self.title = restauranteActual.nombre
            
            let descripcion = restauranteActual.descripcion
            lblDescripcion.text = descripcion
            
            imgRestaurante.image=restauranteActual.imagen
            lblPuntuacion.text = "\(restauranteActual.puntuacion)"
        }
    }
}
