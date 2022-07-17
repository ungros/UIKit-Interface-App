//
//  OverviewController.swift
//  Sport Kit Interface
//
//  Created by Roman on 10.07.2022.
//

import UIKit

class OverviewController: BaseController {

   private let allWorkoutsButton = SecondaryButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
        
    }
}

extension OverviewController {
    
    override func addViews(){
        super.addViews()
        
        view.addSubview(allWorkoutsButton)
    }
    
    override func layoutViews() {
        super.layoutViews()
        NSLayoutConstraint.activate([
            allWorkoutsButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            allWorkoutsButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            allWorkoutsButton.heightAnchor.constraint(equalToConstant: 28),
            allWorkoutsButton.widthAnchor.constraint(equalToConstant: 130)
        ])
    }
    
    override func configure() {
        super.configure()
        
        allWorkoutsButton.translatesAutoresizingMaskIntoConstraints = false
        allWorkoutsButton.setTitle(Resources.Strings.Overview.allWorcoutsButton)
        allWorkoutsButton.addTarget(self, action: #selector(allWorkoutsAction), for: .touchUpInside)
    }
}

@objc extension OverviewController {
    func allWorkoutsAction() {
        print("All workouts b tapped")
    }
}
