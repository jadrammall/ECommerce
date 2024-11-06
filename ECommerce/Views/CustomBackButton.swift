//
//  CustomBackButton.swift
//  ECommerce
//
//  Created by Jad Rammal on 06/11/2024.
//

import UIKit

class CustomBackButton: UIButton {
    
    init(target: Any?, action: Selector) {
        super.init(frame: .zero)
        setupStyle()
        addTarget(target, action: action, for: .touchUpInside)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupStyle()
    }
    
    private func setupStyle() {
        setImage(UIImage(systemName: "chevron.left"), for: .normal)
        tintColor = .black
        backgroundColor = UIColor.systemGray6
        
        layer.cornerRadius = 20
        clipsToBounds = true
        
        translatesAutoresizingMaskIntoConstraints = false
        widthAnchor.constraint(equalToConstant: 40).isActive = true
        heightAnchor.constraint(equalToConstant: 40).isActive = true
    }
}
