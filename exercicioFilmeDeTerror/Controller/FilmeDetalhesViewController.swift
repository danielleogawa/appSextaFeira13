//
//  FilmeDetalhesViewController.swift
//  exercicioFilmeDeTerror
//
//  Created by Danielle Nozaki Ogawa on 2022/05/18.
//

import UIKit

class FilmeDetalhesViewController: UIViewController {
    @IBOutlet weak var posterImage: UIImageView!
    @IBOutlet weak var nomeFilmeLabel: UILabel!
    @IBOutlet weak var anoFilmeLabel: UILabel!
    @IBOutlet weak var descricaoFilmeLabel: UILabel!
    @IBOutlet weak var amigosCollectionView: UICollectionView!
    
    @IBOutlet weak var amigosQueGostamDoFilme: UICollectionView!
    
    var filmeSelecionado: Filme?
    var amigos = Amigos()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        amigosQueGostamDoFilme.dataSource = self
        posterImage.image = UIImage(named: filmeSelecionado?.poster ?? "")
        posterImage.layer.cornerRadius = 40
        nomeFilmeLabel.text = filmeSelecionado?.nome
        if let ano = filmeSelecionado?.anoDeLancamento {
            anoFilmeLabel.text = "Ano de lançamento: \(ano)"
        }
        descricaoFilmeLabel.text = filmeSelecionado?.descricao
    }


}

extension FilmeDetalhesViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return amigos.confereQuemGostaDoFilme(filmeSelecionado!).count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "amigosQueGostamDoFilmeCell", for: indexPath) as? AmigosQueGostamDoFilmeCollectionViewCell
        cell?.configuraCell(Amigo: amigos.confereQuemGostaDoFilme(filmeSelecionado!)[indexPath.item])
        return cell ?? UICollectionViewCell()
    }
    
    
}
