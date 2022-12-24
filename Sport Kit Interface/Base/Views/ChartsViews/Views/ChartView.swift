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
        
        layoutIfNeeded()
        addDashLine(at: 100)
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
            yAxisSeparator.leadingAnchor.constraint(equalTo: leadingAnchor),
            yAxisSeparator.topAnchor.constraint(equalTo: topAnchor),
            yAxisSeparator.bottomAnchor.constraint(equalTo: bottomAnchor),
            yAxisSeparator.widthAnchor.constraint(equalToConstant: 1),
            
            xAxisSeparator.leadingAnchor.constraint(equalTo: leadingAnchor),
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

private extension ChartView {
    func addDashLine(at yPosition: CGFloat) {
        let startPoint = CGPoint(x: 0, y: yPosition)
        let endPoint = CGPoint(x: bounds.width, y: yPosition)
        
        let dashPath = CGMutablePath()
        dashPath.addLines(between: [startPoint, endPoint])
        
        let dashLine = CAShapeLayer()
        dashLine.path = dashPath
        dashLine.strokeColor = R.Colors.separator.cgColor
        dashLine.lineWidth = 1
        dashLine.lineDashPattern = [6, 3]
        
        layer.addSublayer(dashLine)
    }
}
 
