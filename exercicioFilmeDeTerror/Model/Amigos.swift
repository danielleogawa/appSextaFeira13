//
//  Amigos.swift
//  exercicioFilmeDeTerror
//
//  Created by Danielle Nozaki Ogawa on 2022/05/18.
//

import Foundation

struct Amigos {
    static var listaDeAmigos: [Amigo] = [
        Amigo(nome: "Amanda", foto: "amanda", filmes: [Filmes.oCorpoDeJennifer, Filmes.sweenyTodd, Filmes.carrie, Filmes.birdBox]),
        Amigo(nome: "Fernanda", foto: "fernanda", filmes: [Filmes.cacaFantasma, Filmes.ghost, Filmes.aNoivaCadaver, Filmes.birdBox]),
        Amigo(nome: "Felipe", foto: "felipe", filmes: [Filmes.addams, Filmes.it, Filmes.invocacao, Filmes.coraline, Filmes.linhaMortal]),
        Amigo(nome: "Jessica", foto: "jessica", filmes: [Filmes.oEstranhoMundoDeJack, Filmes.sweenyTodd]),
        Amigo(nome: "Adriano", foto: "adriano", filmes: [Filmes.birdBox, Filmes.eli, Filmes.semSaida, Filmes.dracula, Filmes.asBruxasdeRoald]),
        Amigo(nome: "Natália", foto: "natalia", filmes: [Filmes.sweenyTodd, Filmes.aNoivaCadaver, Filmes.crimson, Filmes.cacaFantasma, Filmes.birdBox]),
        
    ]
    //        oCorpoDeJennifer, it, semSaida, dracula, sweenyTodd, asBruxasdeRoald, crimson, aRaparigaDoCapuzVermelho, casper, coraline, aNoivaCadaver, oEstranhoMundoDeJack, carrie, addams, ghost, eli, linhaMortal, birdBox, cacaFantasma, invocacao
    var eu: Amigo = Amigo(nome: "Danielle", foto: "danielle", filmes: [Filmes.birdBox, Filmes.sweenyTodd, Filmes.oEstranhoMundoDeJack, Filmes.coraline, Filmes.asBruxasdeRoald, Filmes.carrie, Filmes.aNoivaCadaver, Filmes.ghost, Filmes.it])
    
     var listaDeFavoritosEmComum: [Filme] = []
    var listaDeAmigosQueGostamDoFilme: [Amigo] = []
    
    mutating func confereFavoritos(amigo: Amigo) -> [Filme] {
        for filme in eu.filmes {
            let contemFilme = amigo.filmes.contains { $0.nome == filme.nome }
            if contemFilme {
                listaDeFavoritosEmComum.append(filme)
            }
        }
        return listaDeFavoritosEmComum
    }
    
    mutating func confereQuemGostaDoFilme(_ filme: Filme) -> [Amigo]{
        for amigo in Amigos.listaDeAmigos {
            let amigoGosta = amigo.filmes.contains { $0.nome == filme.nome}
            if amigoGosta {
                listaDeAmigosQueGostamDoFilme.append(amigo)
            }
        }
        return listaDeAmigosQueGostamDoFilme
    }
}


