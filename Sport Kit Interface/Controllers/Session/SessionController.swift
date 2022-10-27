//
//  SessionController.swift
//  Sport Kit Interface
//
//  Created by Roman on 16.07.2022.
//

import UIKit

final class SessionController: BaseController {
    private let timerView = TimerView()
    private let statsViews = BaseInfoView(with: R.Strings.Session.)

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
    }

    override func constaintViews() {
        super.constaintViews()

        NSLayoutConstraint.activate([
            timerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            timerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15),
            timerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15)
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
    }
}

