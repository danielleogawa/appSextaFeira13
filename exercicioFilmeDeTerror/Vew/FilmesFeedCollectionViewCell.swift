//
//  FilmesFeedCollectionViewCell.swift
//  exercicioFilmeDeTerror
//
//  Created by Danielle Nozaki Ogawa on 2022/05/16.
//

import UIKit

class FilmesFeedCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var posterImage: UIImageView!
    @IBOutlet weak var nomeLabel: UILabel!
    
    func configureCell(_ filme: Filme){
        nomeLabel.text = filme.nome
        posterImage.image = UIImage(named: filme.poster)
        posterImage.layer.cornerRadius = 20
        
    }
}
