//
//  ViagemTableViewCell.swift
//  ErleiseViagens
//
//  Created by Sósthenes Oliveira Lima on 15/02/24.
//

import UIKit

class ViagemTableViewCell: UITableViewCell {

    // Lima - IBOutles
    
    @IBOutlet weak var backgroundViewCell: UIView!
    @IBOutlet weak var viagemImage: UIImageView!
    @IBOutlet weak var tituloViagemLabel: UILabel!
    @IBOutlet weak var subtituloViagemLabel: UILabel!
    @IBOutlet weak var diariaViagemLabel: UILabel!
    
    @IBOutlet weak var precoSemDescontoLabel: UILabel!
    
    
    @IBOutlet weak var precoViagemLabel: UILabel!
    
    @IBOutlet weak var statusCancelamentoViagemLabel: UILabel!
    
}
