//
//  SessionController.swift
//  Sport Kit Interface
//
//  Created by Roman on 16.07.2022.
//

import UIKit

final class SessionController: BaseController {
    private let timerView = TimerView()
    private let statsView = StatsView(with: R.Strings.Session.workoutStats)
    private let stepsView = BaseInfoView(with: R.Strings.Session.stepsCounter)

    private let timerDuration = 5.0

    override func navBarLeftButtonHandler() {
        if timerView.state == .isStopped {
            timerView.startTimer()
        } else {
            timerView.pauseTimer()
        }

        timerView.state = timerView.state == .isRuning ? .isStopped : .isRuning
        addNavBarButton(
            at: .Left,
            with: timerView.state == .isRuning
                ? R.Strings.Session.navBarPause : R.Strings.Session.navBarStart
        )
    }

    override func navBarRightButtonHanler() {
        timerView.stopTimer()
        timerView.state = .isStopped

        addNavBarButton(at: .Left, with: R.Strings.Session.navBarStart)
    }
}

extension SessionController {
    override func setupViews() {
        super.setupViews()

        view.setupView(timerView)
        view.setupView(statsView)
        view.setupView(stepsView)
    }

    override func constaintViews() {
        super.constaintViews()

        NSLayoutConstraint.activate([
            timerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            timerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15),
            timerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            
            statsView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            statsView.topAnchor.constraint(equalTo: timerView.bottomAnchor, constant: 10),
            
            stepsView.leadingAnchor.constraint(equalTo: view.centerXAnchor, constant: 7.5),
            stepsView.topAnchor.constraint(equalTo: statsView.topAnchor),
            stepsView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 15),
            stepsView.heightAnchor.constraint(equalTo: statsView.heightAnchor),
            
        ])
    }

    override func configureAppearance() {
        super.configureAppearance()

        title = R.Strings.NavBar.session
        navigationController?.tabBarItem.title = R.Strings.TabBar.title(for: .session)

        addNavBarButton(at: .Left, with: R.Strings.Session.navBarStart)
        addNavBarButton(at: .Right, with: R.Strings.Session.navBarFinish)

        timerView.configure(with: timerDuration, progress: 0)
        
        timerView.callBack = {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            self.navBarRightButtonHanler()
        }
        }
        
//        timerView.callBack = { [weak self] in
//            self?.navBarRightButtonHandler()
//        }
        
        statsView.configure(with: [.heartRate(value: "155"),
                                   .averagePace(value: "8'20''"),
                                   .totalSteps(value: "7,682"),
                                   .totalDistance(value: "8.25")])
    }
}

