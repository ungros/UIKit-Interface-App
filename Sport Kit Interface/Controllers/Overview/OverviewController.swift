//
//  OverviewController.swift
//  Sport Kit Interface
//
//  Created by Roman on 10.07.2022.
//

import UIKit

class OverviewController: BaseController {

    
   private let navBar = OverviewNavBar()
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
        
    }
}

extension OverviewController {
    
    override func addViews(){
        super.addViews()
        
        
        view.addView(navBar)
    }
    
    override func layoutViews() {
        super.layoutViews()
        NSLayoutConstraint.activate([
            
            navBar.topAnchor.constraint(equalTo: view.topAnchor),
            navBar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            navBar.trailingAnchor.constraint(equalTo: view.trailingAnchor),
              
            
            
        ])
    }
    
    override func configure() {
        super.configure()
        
        navigationController?.navigationBar.isHidden = true
        
        //navBar.translatesAutoresizingMaskIntoConstraints = false
        
        

    }
}

