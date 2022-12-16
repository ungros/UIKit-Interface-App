//
//  MonthlyPerformanceView.swift
//  Sport Kit Interface
//
//  Created by Roman on 14.12.2022.
//

import UIKit

final class MonthlyPerformanceView: BaseInfoView {
    
    private let chartsView = BaseChartsView()
    
    func configure(with items: [BaseChartsView.Data]) {
        chartsView.configureX(with: items)
    }
}

extension MonthlyPerformanceView {
  
   override func setupViews() {
      super.setupViews()
      
      setupView(chartsView)
  }
  
  override func constaintViews(){
      super.constaintViews()
    
      NSLayoutConstraint.activate([
        chartsView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 15),
        chartsView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 15),
        chartsView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -15),
        chartsView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -15),
      ])
  }
  
  override func configureAppearance(){
      super.configureAppearance()
      
      chartsView.backgroundColor = .cyan
  }
}

