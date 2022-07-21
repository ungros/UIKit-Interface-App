//
//  WeekDayView.swift
//  Sport Kit Interface
//
//  Created by Roman on 20.07.2022.
//

import UIKit

extension WeekView {
    final class WeekDaysView: BaseView {
        
        private let nameLabel = UILabel()
        private let dateLabel = UILabel()
        private let stackView = UIStackView()
        
        func configure(with index: Int, and name: String) {
            
            let startOfWeekDate = Date().startOfWeek
            let currentDay = startOfWeekDate.agoForward(to: index)
            let day = Calendar.current.component(.day, from: currentDay)
            
            let isTooday = currentDay.strioTime() == Date().strioTime()
            
            backgroundColor = isTooday ? Resources.Colors.active : Resources.Colors.background
            
            nameLabel.text = name.uppercased()
            nameLabel.textColor = isTooday ? .white : Resources.Colors.inactive
            
            
            dateLabel.text = "\(day)"
            dateLabel.textColor = isTooday ? .white : Resources.Colors.inactive
        }
 
    }
}
    
    extension WeekView.WeekDaysView {
        
        override func addViews(){
            super.addViews()

            addView(stackView)
           
            stackView.addArrangedSubview(nameLabel)
            stackView.addArrangedSubview(dateLabel)
            
        }

        override func layoutViews() {
            super.layoutViews()
            NSLayoutConstraint.activate([
               
                stackView.centerXAnchor.constraint(equalTo: centerXAnchor),
                stackView.centerYAnchor.constraint(equalTo: centerYAnchor)       
            
            ])
        }

        override func configureViews() {
            super.configureViews()

            layer.cornerRadius = 5
            layer.masksToBounds = true
            
            nameLabel.font = Resources.Fonts.helveticaRegular(with: 9)
            nameLabel.textAlignment = .center
             
            dateLabel.font = Resources.Fonts.helveticaRegular(with: 15)
            dateLabel.textAlignment = .center
            
            stackView.spacing = 3
            stackView.axis = .vertical
            
        }
    }



