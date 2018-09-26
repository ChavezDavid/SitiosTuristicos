//
//  DetalleSitioController.swift
//  Tabs
//
//  Created by Alumno on 26/09/18.
//  Copyright © 2018 David. All rights reserved.
//

import Foundation
import UIKit

class DetalleSitioController : UIViewController{
    
    var sitio : Sitio?
    
    @IBOutlet weak var imgSitio: UIImageView!
    @IBOutlet weak var lblSitio: UILabel!
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
        if let sitioActual = sitio{
            self.title = sitioActual.nombre
            
            let descripcion = sitioActual.descripcion
            lblSitio.text = descripcion
            
            imgSitio.image = sitioActual.imagen
        }
    }
}
