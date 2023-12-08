//
//  ViewController.swift
//  PocDelegate
//
//  Created by Felipe Assis on 07/12/23.
//

import UIKit

class IntroScreenViewController: UIViewController {
    private var contentView = IntroScreenView()

    override func viewDidLoad() {
        super.viewDidLoad()
        contentView.delegate = self
        view = contentView
        setupView()
        
    }
    
    private func setupView() {
        setupConstraints()
    }
    
    private func setupConstraints() {}
    
}

extension IntroScreenViewController: IntroScreenDelegate {
    func navigateAction() {
        self.navigationController?.pushViewController(DetailsScreenViewController(), animated: true)
    }
}

