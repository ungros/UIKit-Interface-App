//
//  BaseView.swift
//  Sport Kit Interface
//
//  Created by Roman on 18.07.2022.
//

import UIKit

class BaseView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    
        setupViews()
        constraintViews()
        configureAppearance()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

@objc extension BaseView {
    
    func setupViews(){}
    func constraintViews(){}
    func configureAppearance(){
    
        backgroundColor = .white
    }
    
}
