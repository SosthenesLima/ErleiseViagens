/*
   Viagem.swift
   ErleiseViagens
   Created by Sósthenes Oliveira Lima on 16/02/2024.
   
   Nova Alteração 24/02/2024.
 
*/

import Foundation

struct Viagem: Codable {
    var id: Int
    var titulo: String
    var asset: String
    var subtitulo: String
    var diaria: Int
    var hospedes: Int
    var precoSemDesconto: Double
    var preco: Double
    var cancelamento: String
    
    static func jsonToData(_ json:[String: Any]) -> Data? {
        return try? JSONSerialization.data(withJSONObject: json, options: [])
    }

    static func decodeJson(_ jsonData: Data) -> Viagem? {
        do {
            return try JSONDecoder().decode(Viagem.self, from: jsonData)
        } catch {
            print(error.localizedDescription)
            return nil
        }
    }
}
