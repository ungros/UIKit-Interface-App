//
//  DailyPerformanceView.swift
//  Sport Kit Interface
//
//  Created by Roman on 11.12.2022.
//

import UIKit

final class DailyPerformanceView: BaseInfoView {
    
    private let barsView = BaseBarsView()
    
  
    func configure(with items: [BaseBarView.Data]) {
        barsView.configureX(with: items)
          }
      }

extension DailyPerformanceView {
  
   override func setupViews() {
      super.setupViews()
      
      setupView(barsView)
  }
  
  override func constaintViews(){
      super.constaintViews()
    
      NSLayoutConstraint.activate([
       barsView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 15),
       barsView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
       barsView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
       barsView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -15),
      ])
  }
  
  override func configureAppearance(){
      super.configureAppearance()
  }
}

