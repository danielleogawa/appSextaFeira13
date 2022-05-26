//
//  AmigoDetalhesViewController.swift
//  exercicioFilmeDeTerror
//
//  Created by Danielle Nozaki Ogawa on 2022/05/18.
//

import UIKit

class AmigoDetalhesViewController: UIViewController {

    @IBOutlet weak var filmesEmComumCollectionView: UICollectionView!
    
    var amigoSelecionado: Amigo?
    
    var amigo = Amigos()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        filmesEmComumCollectionView.dataSource = self
        // Do any additional setup after loading the view.
    }

}

extension AmigoDetalhesViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return amigo.confereFavoritos(amigo: amigoSelecionado!).count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let filme = amigo.listaDeFavoritosEmComum[indexPath.item]
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "amigoFilmesEmComumCell", for: indexPath) as? FilmesEmComumCollectionViewCell
        cell?.configurarCell(filme)
        return cell ?? UICollectionViewCell()
    }

    
}

