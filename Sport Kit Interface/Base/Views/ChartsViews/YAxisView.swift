//
//  YAxisView.swift
//  Sport Kit Interface
//
//  Created by Roman on 16.12.2022.
//

import UIKit

final  class YAxisView: BaseView {
    
    private let stackView: UIStackView = {
        let view = UIStackView()
        view.axis = .vertical
        view.distribution = .equalSpacing
        return view
    }()
    
    func configure(with data: [BaseChartsView.Data]) {
        
    }
    
}

extension YAxisView {
    
    override func setupViews() {
        super.setupViews()
        
        setupView(stackView)
        
    }
    
    override func constaintViews() {
        super.constaintViews()
        
        NSLayoutConstraint.activate([
            
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor)
        ])
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        
        backgroundColor = .clear
    }
}


