//
//  OverviewController.swift
//  Sport Kit Interface
//
//  Created by Roman on 10.07.2022.
//

import UIKit

class OverviewController: BaseController {
    
    
    private let navBar = OverviewNavBar()
    
    private let header = SectionHeaderView()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
}

extension OverviewController {
    
    override func setupViews(){
        super.setupViews()
        
        
        view.setupView(navBar)
    }
    
    override func constaintViews() {
        super.constaintViews()
        NSLayoutConstraint.activate([
            
            navBar.topAnchor.constraint(equalTo: view.topAnchor),
            navBar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            navBar.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            header.topAnchor.constraint(equalTo: navBar.bottomAnchor),
            header.topAnchor.constraint(equalTo: <#T##NSLayoutAnchor<NSLayoutYAxisAnchor>#>)
            
            
            
        ])
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        
        navigationController?.navigationBar.isHidden = true
        
        //navBar.translatesAutoresizingMaskIntoConstraints = false
        
        
        
    }
}

