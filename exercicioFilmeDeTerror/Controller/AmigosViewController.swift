//
//  AmigosViewController.swift
//  exercicioFilmeDeTerror
//
//  Created by Danielle Nozaki Ogawa on 2022/05/16.
//

import UIKit

class AmigosViewController: UIViewController {
    @IBOutlet weak var listaAmigoTableView: UITableView!
    
    var amigoSelecionado: Amigo?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        listaAmigoTableView.dataSource = self
        listaAmigoTableView.delegate = self
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let amigoDetalhesController = segue.destination as? AmigoDetalhesViewController {
            amigoDetalhesController.amigoSelecionado = amigoSelecionado
        }
    }
}

extension AmigosViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Amigos.listaDeAmigos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row = indexPath.row
        if let cell = tableView.dequeueReusableCell(withIdentifier: "listaAmigoCell", for: indexPath) as? AmigoTableViewCell {
            cell.configuraCell(Amigos.listaDeAmigos[row])
            return cell
        }
        return UITableViewCell()
    }
    
}

extension AmigosViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        amigoSelecionado = Amigos.listaDeAmigos[indexPath.row]
        performSegue(withIdentifier: "amigoModal", sender: amigoSelecionado)
    }
}
