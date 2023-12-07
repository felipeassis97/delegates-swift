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
        view = contentView
        contentView.delegate = self
        setupView()
    }
    
    private func setupView() {}
    
    private func setupConstraints() {}
    
}

extension IntroScreenViewController: IntroScreenDelegate {
    func navigateAction() {
        self.navigationController?.pushViewController(IntroScreenViewController(), animated: true)
        print("Delegate implementation")
    }
}

