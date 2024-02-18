//
//  ViagemViewModel.swift
//  ErleiseViagens
//
//  Created by Sósthenes Oliveira Lima on 17/02/24.
//

import Foundation

enum ViagemViewModelType: String {
    case destaque
    case ofertas
    case internacional
}


protocol ViagemViewModel {
    var tituloSessao: String { get }
    var tipo: ViagemViewModelType { get }
    var viagens: [Viagem] { get set }
    var numeroDeLinhas: Int { get }
}
