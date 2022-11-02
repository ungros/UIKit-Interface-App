//
//  StatItemView.swift
//  Sport Kit Interface
//
//  Created by Roman on 30.10.2022.
//

import UIKit

final class StatsIemView: BaseView {
    
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
    
}

@objc extension StatsIemView {
    override func setupViews(){
        super.setupViews()
    }
    override func constaintViews(){
        super.constaintViews()
    }
    override func configureAppearance(){
        super.configureAppearance()
    }
}
