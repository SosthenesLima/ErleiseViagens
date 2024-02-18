/*
//  UIView+Extension.swift
//  ErleiseViagens
 
 Created by Sósthenes Oliveira Lima on 16/02/2024.
*/

import UIKit

extension UIView {
    func addSombra() {
        layer.shadowColor = UIColor.lightGray.cgColor
        layer.shadowOpacity = 1
        layer.shadowOffset = .zero
        layer.shadowRadius = 10
        layer.shadowPath = UIBezierPath(rect: self.bounds).cgPath
        layer.shouldRasterize = true
        layer.rasterizationScale = UIScreen.main.scale
        layer.cornerRadius = 10
    }
}
