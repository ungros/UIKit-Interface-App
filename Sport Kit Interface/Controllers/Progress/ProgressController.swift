//
//  ProgressController.swift
//  Sport Kit Interface
//
//  Created by Roman on 16.07.2022.
//

import UIKit

class ProgressController: BaseController {

    override func viewDidLoad() {
        super.viewDidLoad()
    
        title = Resources.Strings.NavBar.progress
        navigationController?.tabBarItem.title = Resources.Strings.TabBar.progress
        
        addNavBarButton(at: .Left, with: "Export")
        addNavBarButton(at: .Right, with: "Finish")
    }


}

