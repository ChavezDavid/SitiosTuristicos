//
//  ComentarioController.swift
//  Tabs
//
//  Created by Alumno on 27/09/18.
//  Copyright © 2018 David. All rights reserved.
//

import Foundation
import UIKit

class ComentarioController : UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    let comentario : [Comentario] = [Comentario(nombre: "Jorge", comentario: "Todo bien", puntuacion: 5.0)]
    
    @IBOutlet weak var tbComentario: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return comentario.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "cellComentario") as! CeldaComentario
        celda.lblNombre.text = comentario[indexPath.row].nombre
        celda.lblComentario.text = comentario[indexPath.row].comentario
        celda.lblPuntuacion.text = "\( comentario[indexPath.row].puntuacion)"
        
        return celda
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 93
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Comentarios"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
}
