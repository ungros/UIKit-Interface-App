//
//  StepsView.swift
//  Sport Kit Interface
//
//  Created by Roman on 30.10.2022.
//

import UIKit

final class StepsView: BaseInfoView {
   
   private let barsView: UIStackView = {
       let view = UIStackView()
       view.axis = .vertical
       view.spacing = 15
      
       view.backgroundColor = .red
       return view
   }()
   
   
   
// Configurator
   func configure(with items: [StatsItem]) {
//       items.forEach  {
//
           barsView.backgroundColor = .red
           
           let itemView = StatsItemView()
//           itemView.configure(with: $0)
//           stackView.addArrangedSubview(itemView)
//
           }
       }



extension StepsView {
   
    override func setupViews() {
       super.setupViews()
       
       setupView(barsView)
   }
   
   override func constaintViews(){
       super.constaintViews()
     
       NSLayoutConstraint.activate([
        barsView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 15),
        barsView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 15),
        barsView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -15),
        barsView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -15),
       ])
   }
   
   override func configureAppearance(){
       super.configureAppearance()
   }
}
