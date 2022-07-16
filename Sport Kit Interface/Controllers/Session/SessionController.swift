//
//  SessionController.swift
//  Sport Kit Interface
//
//  Created by Roman on 16.07.2022.
//

import UIKit

class SessionController: BaseController {

    override func viewDidLoad() {
        super.viewDidLoad()
    
        
        title = "High Intencity Cardio"
        navigationController?.tabBarItem.title = Resources.Strings.TabBar.session
   
        addNavBarButton(at: .Left, with: "Pause")
        addNavBarButton(at: .Right, with: "Finish")
    
    }
    override func navBarLeftButtonHandler() {
        print("Session nav bar left button taped")
    }

}

