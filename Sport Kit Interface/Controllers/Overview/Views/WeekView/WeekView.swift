//
//  WeekView.swift
//  Sport Kit Interface
//
//  Created by Roman on 20.07.2022.
//

import UIKit

final class WeekView: BaseView {
    
    private let calendar = Calendar.current
    
    private let stackView = UIStackView()
 
}


extension WeekView {
  
    override func addViews(){
        super.addViews()

       addView(stackView)
    }

    override func layoutViews() {
        super.layoutViews()
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }

    override func configureViews() {
        super.configureViews()

        stackView.spacing = 7
        stackView.distribution = .fillEqually
               
        //Настройка календаря
        var weekdays = calendar.shortStandaloneWeekdaySymbols
        
        // Переносим Sunday с первого на последнее место
        if calendar.firstWeekday == 1 {
           let sun = weekdays.remove(at: 0)
            weekdays.append(sun)
        }
        
        // Добавляем WeekDayView
        
        weekdays.enumerated().forEach {index, name in
            
            let view = WeekDaysView()
            view.configure(with: index, and: name)
        
        stackView.addArrangedSubview(view)
        
    }
}
}
