//
//  ProgressView.swift
//  Sport Kit Interface
//
//  Created by Roman on 27.07.2022.
//

import UIKit


extension TimerView {
final class ProgressView: UIView {
  
    //Drav progress
    
    func drawProgress(with percent: CGFloat) {
        
        let circleFrame = UIScreen.main.bounds.width - (15 + 40) * 2
        let radius = circleFrame / 2
        let center = CGPoint(x: radius, y: radius)
        let startAngle = -CGFloat.pi * 7 / 6
        let endAngle = CGFloat.pi * 1 / 6
        
        let circlePath = UIBezierPath(arcCenter: center,
                                      radius: radius,
                                      startAngle: startAngle,
                                      endAngle: endAngle,
                                      clockwise: true)
        
        let circleLayer = CAShapeLayer()
        circleLayer.path = circlePath.cgPath
        circleLayer.strokeColor = R.Colors.active.cgColor
        circleLayer.lineWidth = 20
        circleLayer.strokeEnd = percent
        circleLayer.strokeColor = UIColor.clear.cgColor
        circleLayer.lineCap = .round
        
        layer.addSublayer(circleLayer)
        
        }
    }
}
