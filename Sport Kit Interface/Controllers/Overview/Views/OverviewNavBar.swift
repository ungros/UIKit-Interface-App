//
//  OverviewNavBar.swift
//  Sport Kit Interface
//
//  Created by Roman on 18.07.2022.
//

import UIKit


final class OverviewNavBar: BaseView {
    
    private let titleLable: UILabel = {
        let lable = UILabel()
        lable.text = R.Strings.NavBar.overview
        lable.textColor = R.Colors.titleGray
        lable.font = R.Fonts.helvelticaRegular(with: 22)
        return lable
    }()
    
    private let addButton = UIButton()
    private let allWorkoutsButton = WAButton(with: .secondary)
    
    private var weekView = WeekView()
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        //Addig for all subviews!
        addBottomBorder(with: R.Colors.separator, height: 1)
    }
    
    func addAllWorkoutsAction(_ action: Selector, with target: Any?) {
        allWorkoutsButton.addTarget(target, action: action, for: .touchUpInside)
    }
    
    func addButtonAction(_ action: Selector, with target: Any?) {
        addButton.addTarget(target, action: action, for: .touchUpInside)
    }
}

extension OverviewNavBar {
   
    
    
    override func setupViews() {
        super.setupViews()
        
        setupView(allWorkoutsButton)
        setupView(titleLable)
        setupView(addButton)
        
        setupView(weekView)
    }
   
    override func constrainViews() {
        super.constrainViews()
        
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
   
    override func configureAppearance() {
        super.configureAppearance()
     
        backgroundColor = .white
            
//        titleLable.text = R.Strings.Overview.navBarLable
//        titleLable.textColor = R.Colors.titleGrey
//        titleLable.font = R.Fonts.helveticaRegular(with: 22)
        
        allWorkoutsButton.setTitle(R.Strings.Overview.allWorcoutsButton)
        
        addButton.setImage(R.Images.Common.add, for: .normal)
        
      
    }
}

