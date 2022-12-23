//
//  ChartView.swift
//  Sport Kit Interface
//
//  Created by Roman on 23.12.2022.
//

import UIKit

final class ChartView: BaseView {
    
    private let yAxisSeparator: UIView = {
       let view = UIView()
        view.backgroundColor = R.Colors.separator
        return view
    }()
    
    private let xAxisSeparator: UIView = {
       let view = UIView()
        view.backgroundColor = R.Colors.separator
        return view
    }()
    
    func configure(with data: [BaseChartsView.Data]) {
        
        }
    }

extension ChartView {
    
    override func setupViews() {
        super.setupViews()
        
        setupView(yAxisSeparator)
        
    }
    
    override func constaintViews() {
        super.constaintViews()
        
        NSLayoutConstraint.activate([
            
            yAxisSeparator.topAnchor.constraint(equalTo: topAnchor),
            yAxisSeparator.bottomAnchor.constraint(equalTo: bottomAnchor),
            yAxisSeparator.leadingAnchor.constraint(equalTo: leadingAnchor),
            yAxisSeparator.widthAnchor.constraint(equalToConstant: 1),
            
            xAxisSeparator.topAnchor.constraint(equalTo: topAnchor),
            xAxisSeparator.trailingAnchor.constraint(equalTo: trailingAnchor),
            xAxisSeparator.bottomAnchor.constraint(equalTo: bottomAnchor),
            xAxisSeparator.heightAnchor.constraint(equalToConstant: 1),
        ])
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        
        backgroundColor = .clear
    }
}
