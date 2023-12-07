//
//  IntroScreenView.swift
//  PocDelegate
//
//  Created by Felipe Assis on 07/12/23.
//

import Foundation
import UIKit

class IntroScreenView: UIView {
    public weak var delegate: IntroScreenDelegate?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        backgroundColor = .lightGray
        addSubview(buttonContinue)
        setupConstraints()
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            buttonContinue.centerXAnchor.constraint(equalTo: centerXAnchor),
            buttonContinue.centerYAnchor.constraint(equalTo: centerYAnchor),
            buttonContinue.heightAnchor.constraint(equalToConstant: 50),
            buttonContinue.widthAnchor.constraint(equalToConstant: 150),
        ])
    }
    
    
    private lazy var buttonContinue: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Continuar", for: .normal)
        button.backgroundColor = .black
        button.addTarget(self, action: #selector(onTapContinue), for: .touchUpInside)
        return button
    }()
    
    @objc
    private func onTapContinue() {
        delegate?.navigateAction()
    }
    
}
