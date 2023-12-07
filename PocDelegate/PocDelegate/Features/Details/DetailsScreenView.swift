//
//  DetailsScreenView.swift
//  PocDelegate
//
//  Created by Felipe Assis on 07/12/23.
//

import Foundation
import UIKit

class DetailsScreenview: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        backgroundColor = .red
    }
    
    private func setupConstraints() {}
    
}
