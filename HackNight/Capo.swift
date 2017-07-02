//
//  Capo.swift
//  HackNight
//
//  Created by sofia on 01/07/17.
//  Copyright © 2017 Raffaele Martone. All rights reserved.
//

import Foundation
import UIKit
/*TIPO :
    1= maglia
    2= pantalone
    3=scarpe
    4=Gonna
 
*/
class Capo{
    
    var nome: String
    var tipo: Int
    var foto: UIImage
    var descrizione: String
    var colore: String
    var posseduto:  Bool
    var id: Int
    
    init(nome: String,tipo: Int, foto: UIImage ,descrizione: String, colore: String, posseduto: Bool? = false , id: Int){
        self.nome = nome
        self.tipo = tipo
        self.foto = foto
        self.descrizione = descrizione
        self.colore = colore
        self.posseduto = posseduto!
        self.id = id
    }

}
