//
//  ViagemDestaqueViewModel.swift
//  ErleiseViagens
//
//  Created by Sósthenes Oliveira Lima on 17/02/24.
//

import Foundation

class ViagemDestaqueViewModel:  ViagemViewModel {
    
    var tituloSessao: String {
        return "Destaques"
    }
    
    var tipo: ViagemViewModelType {
        return .destaques
    }
    
    var viagens: [Viagem]
    
    var numeroDeLinhas: Int {
        return viagens.count
    }
    
    init(_ viagens: [Viagem]) {
        self.viagens = viagens
    }
    
}
