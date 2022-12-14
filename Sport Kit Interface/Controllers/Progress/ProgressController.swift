//
//  ProgressController.swift
//  Sport Kit Interface
//
//  Created by Roman on 16.07.2022.
//

import UIKit

class ProgressController: BaseController {
    
    private let dailyPerformanceView = DailyPerformanceView(with: R.Strings.Progress.dailyPerformance,
                                                            buttonTitle: R.Strings.Progress.last7Days)
    private let monthlyPerformanceView = MonthlyPerformanceView(with: R.Strings.Progress.monthlyPerformance,
                                                                buttonTitle: R.Strings.Progress.last10Month)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = R.Strings.NavBar.progress
        navigationController?.tabBarItem.title = R.Strings.TabBar.title(for: .progress)
        
        addNavBarButton(at: .Left, with: "Export")
        addNavBarButton(at: .Right, with: "Finish")
    }
    
}

extension ProgressController {
    
    override func setupViews() {
        super.setupViews()
        
        view.setupView(dailyPerformanceView)
        view.setupView(monthlyPerformanceView)
    }
    
    override func configureAppearance() {
        super.configureAppearance()
    }
    
    
    
    override func constaintViews() {
        super.constaintViews()
        
        NSLayoutConstraint.activate([
            dailyPerformanceView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            dailyPerformanceView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15),
            dailyPerformanceView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            dailyPerformanceView.heightAnchor.constraint(equalTo: dailyPerformanceView.widthAnchor, multiplier: 0.68),
            
            monthlyPerformanceView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            monthlyPerformanceView.topAnchor.constraint(equalTo: dailyPerformanceView.bottomAnchor, constant: 15),
            monthlyPerformanceView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            monthlyPerformanceView.heightAnchor.constraint(equalTo: monthlyPerformanceView.widthAnchor, multiplier: 1.06),
        ])
        
        dailyPerformanceView.configure(with: [.init(value: "1", heigntMultiplier: 0.25, title: "Mon"),
                                              .init(value: "2", heigntMultiplier: 0.4, title: "Teu"),
                                              .init(value: "3", heigntMultiplier: 0.6, title: "Wen"),
                                              .init(value: "4", heigntMultiplier: 0.8, title: "Thu"),
                                              .init(value: "5", heigntMultiplier: 1, title: "Fri"),
                                              .init(value: "6", heigntMultiplier: 0.6, title: "Sat"),
                                              .init(value: "7", heigntMultiplier: 0.4, title: "Sun")])
    }
}
