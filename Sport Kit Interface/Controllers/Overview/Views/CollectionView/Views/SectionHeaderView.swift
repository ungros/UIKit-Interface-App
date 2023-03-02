//
//  SectionHeaderView.swift
//  Sport Kit Interface
//
//  Created by Roman on 02.03.2023.
//

import UIKit

final class SectionHeaderView: UICollectionReusableView {
    
    static let id = "SectionHeaderView"
    
    private let title: UILabel = {
        let lable = UILabel()
        lable.font = R.Fonts.helvelticaRegular(with: 13)
        lable.textColor = R.Colors.inactive
        lable.textAlignment = .center
        return lable
    }()
    
    func configure(with title: String) {
        self.title.text = title
    }
    
}

private extension SectionHeaderView {
    

    
     func setupViews() {
        
        setupView(title)
       
    }
     func constaintViews() {
  
        NSLayoutConstraint.activate([
            title.centerXAnchor.constraint(equalTo: centerXAnchor),
            title.centerYAnchor.constraint(equalTo: centerYAnchor),
          
        ])
    }
    
    func configureAppeatance() {
    }

}

