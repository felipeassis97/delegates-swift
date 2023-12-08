//
//  DetailsScreenView.swift
//  PocDelegate
//
//  Created by Felipe Assis on 07/12/23.
//

import Foundation
import UIKit

class DetailsScreenView: UIView {
    
    public weak var delegate: DetailsScreenDelegate?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        backgroundColor = .red
        addSubview(buttonBack)
        setupConstraints()
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            buttonBack.centerXAnchor.constraint(equalTo: centerXAnchor),
            buttonBack.centerYAnchor.constraint(equalTo: centerYAnchor),
            buttonBack.heightAnchor.constraint(equalToConstant: 50),
            buttonBack.widthAnchor.constraint(equalToConstant: 150),
        ])
    }
    
    private lazy var buttonBack: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Back", for: .normal)
        button.backgroundColor = .black
        button.addTarget(self, action: #selector(onTapBackButton), for: .touchUpInside)
        return button
    }()
    
    
    @objc
    private func onTapBackButton() {
        delegate?.onTapBack()
    }
}
