//
//  OverviewNavBar.swift
//  Sport Kit Interface
//
//  Created by Roman on 18.07.2022.
//

import UIKit


final class OverviewNavBar: BaseView {
    
    private let titleLable = UILabel()
    private let addButton = UIButton()
    private let allWorkoutsButton = SecondaryButton()
    
    private var weekView = WeekView()
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        //Addig for all subviews!
        addBottomBorder(with: Resources.Colors.separate, height: 1)
    }
    
    func addAllWorkoutsAction(_ action: Selector, with target: Any?) {
        allWorkoutsButton.addTarget(target, action: action, for: .touchUpInside)
    }
    
    func addButtonAction(_ action: Selector, with target: Any?) {
        addButton.addTarget(target, action: action, for: .touchUpInside)
    }
}

extension OverviewNavBar {
   
    
    
    override func addViews() {
        super.addViews()
        
        addView(allWorkoutsButton)
        addView(titleLable)
        addView(addButton)
        
        addView(weekView)
    }
   
    override func layoutViews() {
        super.layoutViews()
        
        NSLayoutConstraint.activate([
            //Верхняя грань
            addButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 8),
            //Оцтуп справа
            addButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            //Высота
            addButton.heightAnchor.constraint(equalToConstant: 28),
            //Ширина
            addButton.widthAnchor.constraint(equalToConstant: 28),
            
            allWorkoutsButton.topAnchor.constraint(equalTo: addButton.topAnchor),
            allWorkoutsButton.trailingAnchor.constraint(equalTo: addButton.leadingAnchor, constant: -15),
            allWorkoutsButton.heightAnchor.constraint(equalToConstant: 28),
            allWorkoutsButton.widthAnchor.constraint(equalToConstant: 130),
            
            titleLable.centerYAnchor.constraint(equalTo: addButton.centerYAnchor),
            titleLable.trailingAnchor.constraint(equalTo: addButton.leadingAnchor),
            titleLable.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            
            weekView.topAnchor.constraint(equalTo: addButton.bottomAnchor, constant: 15),
            weekView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            weekView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            weekView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -15),
            weekView.heightAnchor.constraint(equalToConstant: 47)
        ])
    }
   
    override func configureViews() {
        super.configureViews()
     
        backgroundColor = .white
            
        titleLable.text = Resources.Strings.Overview.navBarLable
        titleLable.textColor = Resources.Colors.titleGrey
        titleLable.font = Resources.Fonts.helveticaRegular(with: 22)
        
        allWorkoutsButton.setTitle(Resources.Strings.Overview.allWorcoutsButton)
        
        addButton.setImage(Resources.Images.Common.add, for: .normal)
        
      
    }
}

