//
//  BaseChartsView.swift
//  Sport Kit Interface
//
//  Created by Roman on 16.12.2022.
//

import UIKit

extension BaseChartsView {
    struct Data {
        let value: Int
        let title: String
    }
}

final class BaseChartsView: BaseView {
    
    private let yAxisView = YAxisView()
    private let xAxisView = XAxisView()
    
    private let chartView = ChartView() //BaseChartsView()
    
    func configureX(with data: [BaseChartsView.Data], topChartOffset: Int = 10) {
        yAxisView.configure(with: data)
        xAxisView.configure(with: data)
        chartView.configure(with: data, topChartOffset: topChartOffset)
        }
    }

extension BaseChartsView {
    override func setupViews() {
        super.setupViews()
        
        setupView(yAxisView)
        setupView(xAxisView)
        
        setupView(chartView)
            
    }
    
    override func constaintViews() {
        super.constaintViews()
        
        NSLayoutConstraint.activate([
            
            yAxisView.leadingAnchor.constraint(equalTo: leadingAnchor),
            yAxisView.topAnchor.constraint(equalTo: topAnchor),
            yAxisView.bottomAnchor.constraint(equalTo: xAxisView.topAnchor, constant: -15),
            
            xAxisView.leadingAnchor.constraint(equalTo: yAxisView.trailingAnchor, constant: 8),
            xAxisView.bottomAnchor.constraint(equalTo: bottomAnchor),
            xAxisView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 4),
            
            chartView.topAnchor.constraint(equalTo: topAnchor, constant: 4),
            chartView.bottomAnchor.constraint(equalTo: xAxisView.topAnchor, constant: -16),
            chartView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -4),
            chartView.leadingAnchor.constraint(equalTo: yAxisView.trailingAnchor, constant: 16)
        ])
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        
        backgroundColor = .clear
    }
}
