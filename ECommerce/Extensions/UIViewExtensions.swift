//
//  UIViewExtensions.swift
//  ECommerce
//
//  Created by Jad Rammal on 05/11/2024.
//

import UIKit

extension UIView {
    @IBInspectable
    var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
        }
    }
}
