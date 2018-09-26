//
//  ViewController.swift
//  Tabs
//
//  Created by Alumno on 25/09/18.
//  Copyright © 2018 David. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let sitio : [Sitio] = [Sitio(nombre: "Laguna del Nainari", descripcion: "A", imagen : #imageLiteral(resourceName: "nainari2")),
                           Sitio(nombre: "Dique 10", descripcion : "F", imagen : #imageLiteral(resourceName: "dique10"))]
    @IBOutlet weak var tbSitio: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sitio.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "cellSitio") as! CeldaSitio
        celda.lblNombre.text = sitio[indexPath.row].nombre
        celda.imgSitio.image = sitio[indexPath.row].imagen
        
        return celda
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 93
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Sitios Turisticos"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToDetalleSitio" {
            let destino = segue.destination as? DetalleSitioController
            destino?.sitio = sitio[(tbSitio.indexPathForSelectedRow?.row)!]
        }
    }

}

