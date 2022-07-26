//
//  BaseInfoView.swift
//  Sport Kit Interface
//
//  Created by Roman on 21.07.2022.
//

import UIKit

class BaseInfoView: BaseView {
    
    private let titleLabel: UILabel = {
        
        let lable = UILabel()
        lable.font = R.Fonts.helvelticaRegular(with: 13)
        lable.textColor = R.Colors.inactive
        
        
        return lable
    }()
    
    private let button = BaseButton(with: .primary)
    
    
    private let contentView: UIView = {
        
        let view = UIView()
        view.backgroundColor = .white
        view.layer.backgroundColor = R.Colors.separator.cgColor
        view.layer.borderWidth = 1
        view.layer.cornerRadius = 5
        
        return view
    }()
    
//    private let button: UIButton = {
//
//       let button = UIButton()
//        button.backgroundColor = #colorLiteral(red: 0.9746658237, green: 0.5724194406, blue: 0.4765474473, alpha: 1)
//        return button
//    }()
    
    //Кастомный инициализатор
    init(with title: String? = nil, buttonTitle: String? = nil) {
        
        titleLabel.text = title?.uppercased()
        titleLabel.textAlignment = buttonTitle == nil ? .center : .left
        button.setTitle(buttonTitle)
        
        titleLabel.isHidden = buttonTitle == nil ? true : false
        
     
        super.init(frame: .zero)
       
        
    }
    
    required init?(coder: NSCoder) {
        super.init(frame: .zero)
    }
    
    func addButtonTarget(target: Any?, action: Selector) {
        button.addTarget(target, action: action, for: .touchUpInside)
    }
    
}
extension BaseInfoView {
    
   override func setupViews(){
       super.setupViews()
       
       setupView(titleLabel)
       setupView(contentView)
       setupView(button)
   }
    
   override func constrainViews(){
       super.constrainViews()
       
       var contentTopAnchor: NSLayoutAnchor = titleLabel.text == nil ? topAnchor : titleLabel.bottomAnchor
       var contentTopOffset: CGFloat = titleLabel.text == nil ? 0 : 10
       
       NSLayoutConstraint.activate([
        
        titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
        titleLabel.topAnchor.constraint(equalTo: topAnchor),
        titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
        
        button.trailingAnchor.constraint(equalTo: trailingAnchor),
        button.centerYAnchor.constraint(equalTo: titleLabel.centerYAnchor),
     //   button.widthAnchor.constraint(equalToConstant: 130),
        button.heightAnchor.constraint(equalToConstant: 28),
        
        contentView.topAnchor.constraint(equalTo: contentTopAnchor, constant: contentTopOffset),
        contentView.leadingAnchor.constraint(equalTo: leadingAnchor),
        contentView.trailingAnchor.constraint(equalTo: trailingAnchor),
        contentView.bottomAnchor.constraint(equalTo: bottomAnchor),
        
       ])
       
   }
    
   override func configureAppearance(){
       super.configureAppearance()
    backgroundColor = .clear
    }
    
 }


