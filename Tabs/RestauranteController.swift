//
//  RestauranteController.swift
//  Tabs
//
//  Created by Alumno on 27/09/18.
//  Copyright © 2018 David. All rights reserved.
//

import Foundation
import UIKit

class RestauranteController : UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    let restaurante : [Restaurante] = [Restaurante(nombre: "Pollo Feliz", descripcion: "Pollos", imagen: #imageLiteral(resourceName: "polloFeliz"), puntuacion: 5.0)]
    @IBOutlet weak var tbRestaurante: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurante.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "cellRestaurante") as! CeldaRestaurante
        celda.lblRestaurante.text = restaurante[indexPath.row].nombre
        celda.imgRestaurante.image = restaurante[indexPath.row].imagen
        
        return celda
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 93
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Restaurantes"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToDetalleRestaurante"{
            let destino = segue.destination as? DetalleRestauranteController
            destino?.restaurante = restaurante[(tbRestaurante.indexPathForSelectedRow?.row)!]
        }
    }
}
