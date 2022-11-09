//
//  StatItemView.swift
//  Sport Kit Interface
//
//  Created by Roman on 30.10.2022.
//

import UIKit

final class StatsIemView: BaseView {
    
    // CONFIGURE STRUC
    struct StatsItem {
        let imageName: UIImage?
        let value: String
        let title: String
    }
    
    private let imagView = UIImageView()
    
    private let valueLabel: UILabel = {
        let label = UILabel()
        label.font = R.Fonts.helvelticaRegular(with: 17)
        label.textColor = R.Colors.titleGray
        return label
    }()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.font = R.Fonts.helvelticaRegular(with: 10)
        label.textColor = R.Colors.inactive
        return label
    }()
    
    private let stackViev: UIStackView = {
        let viev = UIStackView()
        viev.axis = .vertical
        return viev
    }()
    
    
    // CONFIGURE FUNC
    func configure(with item: StatsItem) {
        imagView.image = item.imageName
        valueLabel.text = item.value
        titleLabel.text = item.title
    }
}

extension StatsIemView {
   
    override func setupViews(){
        super.setupViews()
        
        setupView(imagView)
        setupView(stackViev)
        stackViev.addArrangedSubview(valueLabel)
        stackViev.addArrangedSubview(titleLabel)
    }
   
    override func constaintViews(){
        super.constaintViews()
        
        NSLayoutConstraint.activate([
            imagView.topAnchor.constraint(equalTo: centerYAnchor),
            imagView.leadingAnchor.constraint(equalTo: leadingAnchor),
            imagView.heightAnchor.constraint(equalToConstant: 23),
            imagView.widthAnchor.constraint(equalTo: imagView.heightAnchor),
            
            stackViev.leadingAnchor.constraint(equalTo: imagView.trailingAnchor, constant: 15),
            stackViev.topAnchor.constraint(equalTo: topAnchor),
            stackViev.bottomAnchor.constraint(equalTo: bottomAnchor),
            stackViev.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
    }
    
    override func configureAppearance(){
        super.configureAppearance()
    }
}
