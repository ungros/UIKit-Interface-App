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
    
    private let contentView: UIView = {
        
        let view = UIView()
        view.backgroundColor = .white
        view.layer.backgroundColor = R.Colors.separator.cgColor
        view.layer.borderWidth = 1
        view.layer.cornerRadius = 5
        
        return view
    }()
    
    //Кастомный инициализатор
    init(with title: String? = nil, aligment: NSTextAlignment = .left) {
        
        titleLabel.text = title?.uppercased()
        titleLabel.textAlignment = aligment
        
        super.init(frame: .zero)
       
        
    }
    
    required init?(coder: NSCoder) {
        super.init(frame: .zero)
    }
    
}
extension BaseInfoView {
    
   override func setupViews(){
       super.setupViews()
       
       setupView(titleLabel)
       setupView(contentView)
   }
    
   override func constrainViews(){
       super.constrainViews()
       
       var contentTopAnchor: NSLayoutAnchor = titleLabel.text == nil ? topAnchor : titleLabel.bottomAnchor
       var contentTopOffset: CGFloat = titleLabel.text == nil ? 0 : 10
       
       NSLayoutConstraint.activate([
        
        titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
        titleLabel.topAnchor.constraint(equalTo: topAnchor),
        titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
        
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


