//
//  AmigoTableViewCell.swift
//  exercicioFilmeDeTerror
//
//  Created by Danielle Nozaki Ogawa on 2022/05/18.
//

import UIKit

class AmigoTableViewCell: UITableViewCell {
    @IBOutlet weak var amigoFoto: UIImageView!
    @IBOutlet weak var amigoNomeLabel: UILabel!
    @IBOutlet weak var filmesEmComumLabel: UILabel!
 
    var amigos = Amigos()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func contaFavoritos(_ amigo: Amigo) -> Int {
        return amigos.confereFavoritos(amigo: amigo).count
    }
    
    func configuraCell(_ amigo: Amigo){
        amigoFoto.image = UIImage(named: amigo.foto)
        amigoFoto.layer.cornerRadius = 40
        amigoNomeLabel.text = amigo.nome
        filmesEmComumLabel.text = "Filmes em comum: \(String(contaFavoritos(amigo)))"
    }
}
