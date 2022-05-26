//
//  FilmesEmComumCollectionViewCell.swift
//  exercicioFilmeDeTerror
//
//  Created by Danielle Nozaki Ogawa on 2022/05/18.
//

import UIKit

class FilmesEmComumCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var posterImage: UIImageView!
    @IBOutlet weak var nomeLabel: UILabel!
    
    
    func configurarCell(_ filme: Filme){
        posterImage.image = UIImage(named: filme.poster)
        posterImage.layer.cornerRadius = 20
        nomeLabel.text = filme.nome
    }
}
