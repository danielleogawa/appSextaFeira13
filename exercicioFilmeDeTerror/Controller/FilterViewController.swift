//
//  FilterViewController.swift
//  exercicioFilmeDeTerror
//
//  Created by Danielle Nozaki Ogawa on 2022/05/16.
//

import UIKit

class FilterViewController: UIViewController {
    
    @IBOutlet weak var filter: UISegmentedControl!
    @IBOutlet weak var filterCollectionView: UICollectionView!
    
    
    var listaDeAdulto: [Filme] = []
    var listaDeInfantil: [Filme] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        filterCollectionView.dataSource = self
        filtrarFilmes()
        
    }

    @IBAction func selecionouSegmentedControl(_ sender: Any) {
        filterCollectionView.reloadData()
    }
    
    func filtrarFilmes(){
        for filme in Filmes.listaDeFilmes {
            if filme.infantil == true {
                listaDeInfantil.append(filme)
            } else {
                listaDeAdulto.append(filme)
            }
        }
    }
}

extension FilterViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        let indice = filter.selectedSegmentIndex
        
        switch indice {
        case 0:
            return listaDeAdulto.count
        case 1:
            return listaDeInfantil.count
        default:
            return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "filmesCell", for: indexPath) as? FilmesFeedCollectionViewCell
        
        let indice = filter.selectedSegmentIndex
    
        switch indice {
        case 0 :
            cell?.configureCell(listaDeAdulto[indexPath.item])
            return cell ?? UICollectionViewCell()
        case 1:
            cell?.configureCell(listaDeInfantil[indexPath.item])
            return cell ?? UICollectionViewCell()
        default:
            return UICollectionViewCell()
        }
    }
    
    
}
