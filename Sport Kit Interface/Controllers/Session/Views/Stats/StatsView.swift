//
//  StatsView.swift
//  Sport Kit Interface
//
//  Created by Roman on 30.10.2022.
//

import UIKit

 class StatsView: BaseInfoView {
    
    private let stackView: UIStackView = {
        let view = UIStackView()
        view.axis = .vertical
        view.spacing = 15
        view.distribution = .fillEqually
        view.backgroundColor = .red
        return view
    }()
    
    
    
// Configurator
    func configurex(with items: [StatsIemView.ItemData]) {
        items.forEach  {
            let itemView = StatsView()
            itemView.configure(with: $0)
            stackView.addArrangedSubview(itemView)
            
            }
        }
    }


extension StatsView {
    override func setupViews() {
        super.setupViews()
        setupView(stackView)
    }
    
    override func constaintViews(){
        super.constaintViews()
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            stackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 15),
            stackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -15),
            stackView.bottomAnchor.constraint(equalTo: contentView.topAnchor, constant: -10),
                 
        ])
    }
    
    override func configureAppearance(){
        super.configureAppearance()
    }
}
