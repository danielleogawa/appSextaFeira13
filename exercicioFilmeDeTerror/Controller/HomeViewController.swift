//
//  HomeViewController.swift
//  exercicioFilmeDeTerror
//
//  Created by Danielle Nozaki Ogawa on 2022/05/16.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var filmesFeedCollectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        filmesFeedCollectionView.dataSource = self
    }
    
    
}

extension HomeViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        Filmes.listaDeFilmes.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let filme = Filmes.listaDeFilmes[indexPath.item]
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "filmeCell", for: indexPath) as? FilmesFeedCollectionViewCell
        cell?.configureCell(filme)
            
        return cell ?? UICollectionViewCell()
    }
}

