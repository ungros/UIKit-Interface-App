//
//  NavBarController.swift
//  Sport Kit Interface
//
//  Created by Roman on 16.07.2022.
//

import UIKit

final class NavBarController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
     configure()

    }
    
    
    
    private func configure() {
        view.backgroundColor = .white
        navigationBar.isTranslucent = false
        navigationBar.standardAppearance.titleTextAttributes = [
            .foregroundColor: Resources.Colors.titleGrey,
            .font: Resources.Fonts.helveticaRegular(with: 17)
        ]
        
        navigationBar.addBottomBorder(with: Resources.Colors.separate, height: 1)
    }
        

}
