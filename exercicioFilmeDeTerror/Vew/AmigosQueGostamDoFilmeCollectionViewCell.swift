//
//  AmigosQueGostamDoFilmeCollectionViewCell.swift
//  exercicioFilmeDeTerror
//
//  Created by Danielle Nozaki Ogawa on 2022/05/22.
//

import UIKit

class AmigosQueGostamDoFilmeCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var fotoAmigo: UIImageView!
    
    
    func configuraCell(Amigo: Amigo){
        fotoAmigo.image = UIImage(named: Amigo.foto)
        fotoAmigo.layer.cornerRadius = 50
    }
}
