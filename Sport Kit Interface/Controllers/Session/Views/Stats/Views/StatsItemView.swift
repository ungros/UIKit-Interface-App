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
    
    var item: StatsItemView.ItemData {
        swith self {
        case .averagePace(let value):
            return .init(image: R.Images.Session.averagePace,
                         value: value + " / km",
                         title: R.Strings.Session.averagePace)
        case .heartRate(let value):
            return .init(image: R.Images.Session.heartRate,
                         value: value + " bpm",
                         title: R.Strings.Session.heartRate)
        case .totalDistance(let value):
            return .init(image: R.Images.Session.totalDistance,
                         value: value + " km",
                         title: R.Strings.Session.totalDistance)
        case .totalSteps(let value):
            return .init(image: R.Images.Session.totalSteps,
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
    func configure(with item: ItemData) {
        imagView.image = item.image
        valueLabel.text = item.value
        titleLabel.text = item.title
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
            imagView.topAnchor.constraint(equalTo: topAnchor),
            imagView.leadingAnchor.constraint(equalTo: leadingAnchor),
            imagView.widthAnchor.constraint(equalToConstant: 23),
            imagView.heightAnchor.constraint(equalToConstant: 23),
            
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
