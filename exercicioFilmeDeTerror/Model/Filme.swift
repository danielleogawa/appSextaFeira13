//
//  Filme.swift
//  exercicioFilmeDeTerror
//
//  Created by Danielle Nozaki Ogawa on 2022/05/16.
//

import Foundation

class Filme {
    let nome: String
    let poster: String
    let descricao: String
    let anoDeLancamento: Int
    let adulto: Bool
    let infantil: Bool
    
    init(nome: String, poster: String, descricao: String, anoDeLancamento: Int, adulto: Bool, infantil: Bool){
        self.nome = nome
        self.poster = poster
        self.descricao = descricao
        self.anoDeLancamento = anoDeLancamento
        self.adulto = adulto
        self.infantil = infantil
    }
    
}
