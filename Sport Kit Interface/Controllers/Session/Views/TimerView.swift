//
//  TimerView.swift
//  Sport Kit Interface
//
//  Created by Roman on 27.07.2022.
//

import UIKit

final class TimerView: BaseInfoView {
    
    private let progressView: ProgressView = {
        
        let view = ProgressView()
        
        view.drawProgress(with: 0)
        
        return view
        
    }()
}

extension TimerView {
    
        override  func setupViews(){
            super.setupViews()
            
            setupView(progressView)
        }
        override func constrainViews(){
            super.constrainViews()
            
            NSLayoutConstraint.activate([
                progressView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 40),
                progressView.topAnchor.constraint(equalTo: topAnchor, constant: 40),                
                progressView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -40),
                progressView.heightAnchor.constraint(equalTo: progressView.widthAnchor)
            ])
        }
        override func configureAppearance(){
            super.configureAppearance() 
    
            progressView.backgroundColor = .green
    }
}
