//
//  CustomButton.swift
//  ECommerce
//
//  Created by Jad Rammal on 05/11/2024.
//

import UIKit

class CustomButton: UIButton {

    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.layer.cornerRadius = 20
        self.tintColor = .white
        self.backgroundColor = UIColor(named: "CustomPurple")
        self.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        
    }

}
