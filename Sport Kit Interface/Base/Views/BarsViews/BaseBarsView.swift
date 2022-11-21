//
//  BaseBarsView.swift
//  Sport Kit Interface
//
//  Created by Roman on 21.11.2022.
//

import UIKit

 class BaseBarsView: BaseView {
    
    private let stackView: UIStackView = {
        let view = UIStackView()
        view.distribution = .fillEqually
        
        return view
    }()
    
     //zzz
    func configureX(with data: [BaseBarView.Data]) {
        data.forEach {
            let barView = BaseBarView(data: $0)
            stackView.addArrangedSubview(barView)
        }
    }
}



extension BaseBarsView {
    override func setupViews() {
        super.setupViews()

        setupView(stackView)
       
    }

    override func constaintViews() {
        super.constaintViews()

        NSLayoutConstraint.activate([
            
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor),

        ])
    }

    override func configureAppearance() {
        super.configureAppearance()

        backgroundColor = .clear
    }
}
