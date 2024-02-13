//
//  HomeTableViewHeader.swift
//  ErleiseViagens
//
//  Created by Sósthenes Oliveira Lima on 12/02/24.
//

import UIKit

class HomeTableViewHeader: UIView {

  // Sosthenes - IBOutles

    @IBOutlet weak var tituloLabel: UILabel!
    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var bannerImageView: UIImageView!
    
    func configurarView() {
        headerView.backgroundColor =  UIColor(red: 30.0/255, green: 59.0/255, blue: 119.0/255 , alpha: 1)
    }
}
