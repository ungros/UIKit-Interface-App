//
//  BaseController.swift
//  Sport Kit Interface
//
//  Created by Roman on 16.07.2022.
//

import UIKit

enum NavBarPosition {
    case Left
    case Right
}

class BaseController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        addViews()
        layoutViews()
        configure()
        
        
    }
}

@objc extension BaseController {
   
    
    func addViews(){}
    func layoutViews(){}
    func configure(){
        view.backgroundColor = R.Colors.background
    }
    
    
    
    func navBarLeftButtonHandler(){ print("NavBar Lefight button tapped") }
    
    func navBarRightButtonHanler(){ print("NavBar Right button tapped") }
}



extension BaseController {

    func addNavBarButton(at position: NavBarPosition, with title: String) {
        let button = UIButton(type: .system)
        button.setTitle(title, for: .normal)
        button.setTitleColor(R.Colors.active, for: .normal)
        button.setTitleColor(R.Colors.inactive, for: .disabled)
        button.titleLabel?.font = R.Fonts.helvelticaRegular(with: 17)
        
        switch position {
        case .Left:
            button.addTarget(self, action: #selector(navBarLeftButtonHandler), for: .touchUpInside)
            navigationItem.leftBarButtonItem = UIBarButtonItem(customView: button)
        case .Right:
            button.addTarget(self, action: #selector(navBarRightButtonHanler), for: .touchUpInside)
            navigationItem.rightBarButtonItem = UIBarButtonItem(customView: button)
        }
    }
}
