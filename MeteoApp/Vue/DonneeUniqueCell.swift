//
//  DonneeUniqueCell.swift
//  MeteoApp
//
//  Created by Dea-loC on 05/04/2018.
//  Copyright © 2018 Dea-loC. All rights reserved.
//

import UIKit



class DonneeUniqueCell: UICollectionViewCell {
    
    @IBOutlet weak var icone: UIImageView!
    @IBOutlet weak var temperature: UILabel!
    @IBOutlet weak var desc: UILabel!
    
    var prevision: Prevision!
    
    func miseEnPlace(prevision: Prevision) {
        //backgroundColor = UIColor(white: 1, alpha: 0.7)
        layer.cornerRadius = 20
        self.prevision = prevision
        ImageDownloader.obtenir.imageDepuis(self.prevision.icone, imageView: icone)
        temperature.text = self.prevision.temperateur.convertirEnIntString()
        desc.text =  self.prevision.jour + " à " + (DateHelper.obtenir.heure(self.prevision.date) ?? "") + " : \n" + self.prevision.desc
        
    }
    
}
