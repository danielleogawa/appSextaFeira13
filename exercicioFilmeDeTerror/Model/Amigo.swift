//
//  Amigo.swift
//  exercicioFilmeDeTerror
//
//  Created by Danielle Nozaki Ogawa on 2022/05/16.
//

import Foundation

class Amigo {
    let nome: String
    let foto: String
    let filmes: [Filme]
    
    init(nome: String, foto: String, filmes: [Filme]){
        self.nome = nome
        self.foto = foto
        self.filmes = filmes
    }
    
}
