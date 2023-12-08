//
//  DetailsScreenViewController.swift
//  PocDelegate
//
//  Created by Felipe Assis on 07/12/23.
//

import Foundation
import UIKit

class DetailsScreenViewController: UIViewController {
    private var contentView = DetailsScreenView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        contentView.delegate = self
        view = contentView
        setupView()
    }
    
    private func setupView() {}
    
    private func setupContraints() {}
    
}

extension DetailsScreenViewController: DetailsScreenDelegate {
    func onTapBack() {
        print("Back no delegate")
        self.navigationController?.pushViewController(IntroScreenViewController(), animated: true)
    }
}
