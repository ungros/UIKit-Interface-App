//
//  StatsView.swift
//  Sport Kit Interface
//
//  Created by Roman on 30.10.2022.
//

import UIKit

final class StatsView: BaseInfoView {
    
    private let itemView = StatsIemView()
    
    override func setupViews() {
        super.setupViews()
        
        setupView(itemView)
        itemView.configure(with: StatsIemView.StatsItem(imageName: R.Images.Session.hearthRate,
                                                        value: "155 bpm",
                                                        title: R.Strings.Session.hearthRate))
        
        NSLayoutConstraint.activate([
            itemView.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            itemView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            
            
        ])
    }
}
