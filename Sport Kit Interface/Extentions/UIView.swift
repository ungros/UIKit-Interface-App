//
//  UIView.swift
//  Sport Kit Interface
//
//  Created by Roman on 16.07.2022.
//

import UIKit

extension UIView {
    
    func addBottomBorder(with color: UIColor, height: CGFloat) {
        let separator = UIView()
        separator.backgroundColor = color
        separator.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        separator.frame = CGRect(x: 0,
                                 y: frame.height - height,
                                 width: frame.width,
                                 height: height)
        addSubview(separator)
    }
    
    // Button (custom) configuration
    
    func makeSystem(_ button: UIButton) {
        button.addTarget(self, action: #selector(handlineIn), for: [
            .touchDown,
            .touchUpInside
        ])
        button.addTarget(self, action: #selector(handlineOut), for: [
            .touchDragOutside,
            .touchUpInside,
            .touchUpOutside,
            .touchDragExit,
            .touchCancel
        ])
    }
   
    @objc func handlineIn() {
        UIView.animate(withDuration: 0.15) {self.alpha = 0.55}
    }
    
    @objc func handlineOut() {
        UIView.animate(withDuration: 0.15) {self.alpha = 1}
    }
}
