//
//  StatItemView.swift
//  Sport Kit Interface
//
//  Created by Roman on 30.10.2022.
//

import UIKit

enum StatsItem {
    case averagePace(value: String)
    case heartRate(value: String)
    case totalDistance(value: String)
    case totalSteps(value: String)
    
    var data: StatsItemView.ItemData {
        switch self {
        case .averagePace(let value):
            return .init(image: R.Images.Session.Stats.distance,
                         value: value + " / km",
                         title: R.Strings.Session.averagePace)
        case .heartRate(let value):
            return .init(image: R.Images.Session.hearthRate,
                         value: value + " bpm",
                         title: R.Strings.Session.hearthRate)
        case .totalDistance(let value):
            return .init(image: R.Images.Session.Stats.distance,
                         value: value + " km",
                         title: R.Strings.Session.totalDistance)
        case .totalSteps(let value):
            return .init(image: R.Images.Session.Stats.steps,
                         value: value,
                         title: R.Strings.Session.totalSteps)
        }
    }
}
 class StatsItemView: BaseView {
    
    // CONFIGURE STRUC
    struct ItemData {
        let image: UIImage?
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
        imagView.image = item.data.image
        valueLabel.text = item.data.value
        titleLabel.text = item.data.title.uppercased()
    }
}

extension StatsItemView  {
   
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
            imagView.centerYAnchor.constraint(equalTo: centerYAnchor),
            imagView.leadingAnchor.constraint(equalTo: leadingAnchor),
            imagView.widthAnchor.constraint(equalToConstant: 23),
        //    imagView.heightAnchor.constraint(equalToConstant: 23),
            
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
