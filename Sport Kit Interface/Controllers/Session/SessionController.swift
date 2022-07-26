//
//  SessionController.swift
//  Sport Kit Interface
//
//  Created by Roman on 16.07.2022.
//

import UIKit

class SessionController: BaseController {

    private let timerView: BaseInfoView = {
        
        let view = BaseInfoView(with: "Test", buttonTitle: "Test Button")
        return view
    }()
}

extension SessionController {
   
    override func setupViews() {
        super.setupViews()
    
        view.setupView(timerView)
    }
    
    override func constrainViews(){
        super.constrainViews()
        
        NSLayoutConstraint.activate([
            timerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            timerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15),
            timerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            timerView.heightAnchor.constraint(equalToConstant: 300)
            
        ])
    }
    override func configureAppearance(){
        super.configureAppearance()
        
        
        title = R.Strings.NavBar.session
        navigationController?.tabBarItem.title = R.Strings.TabBar.title(for: .session)
        addNavBarButton(at: .Left, with: "Pause")
        addNavBarButton(at: .Right, with: "Finish")
        
   
    }
    
}

