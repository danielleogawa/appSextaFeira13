//
//  BuscaViewController.swift
//  exercicioFilmeDeTerror
//
//  Created by Danielle Nozaki Ogawa on 2022/05/16.
//

import UIKit

class BuscaViewController: UIViewController {
    @IBOutlet weak var buscaTextField: UITextField!
    @IBOutlet weak var resultadoBuscaTableView: UITableView!
    
    var listaDeFilmes: [Filme] = []
    
    var filmeSelecionado: Filme?
    override func viewDidLoad() {
        super.viewDidLoad()
        resultadoBuscaTableView.dataSource = self
        resultadoBuscaTableView.delegate = self
        
        listaDeFilmes = Filmes.listaDeFilmes

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let detalhesVC = segue.destination as? FilmeDetalhesViewController {
            detalhesVC.filmeSelecionado = filmeSelecionado
        }
    }
    
    @IBAction func buscaChanged() {
        let resultados = Filmes.listaDeFilmes.filter({ filme in
            return filme.nome.lowercased().contains(buscaTextField.text?.lowercased() ?? "")
        })
        
        if buscaTextField.hasText {
            listaDeFilmes = resultados
        } else {
            listaDeFilmes = Filmes.listaDeFilmes
        }
        
        resultadoBuscaTableView.reloadData()
    }
    
}

extension BuscaViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaDeFilmes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let row = indexPath.row
        
        cell.textLabel?.text = listaDeFilmes[row].nome
        
        return cell
    }
}

extension BuscaViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        filmeSelecionado = listaDeFilmes[indexPath.row]
        performSegue(withIdentifier: "detalhesSegue", sender: filmeSelecionado)
    }
}
