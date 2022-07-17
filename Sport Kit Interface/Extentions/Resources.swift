//
//  File.swift
//  Sport Kit Interface
//
//  Created by Roman on 11.07.2022.
//

import UIKit


enum Resources {
    enum Colors {
        static var active = UIColor(hexString: "A834D1")
        static var inactive = UIColor(hexString: "929DA5")
        
        static var background = UIColor(hexString: "F8F9F9")
        static var separate = UIColor(hexString: "E8ECEF")
        static var secondary = UIColor(hexString: "F0F3FF")
        
        static var titleGrey = UIColor(hexString: "545C77")
    }

enum Strings {
    
    enum TabBar{
        static let overview = "Overview"
        static let session = "Session"
        static let progress = "Progress"
        static let settings = "Settings"
    }
    enum NavBar{
        static let settings = "Settings"
        static let progress = "Workout Progress"
        static let session = "High Intencity Cardio"
    }
}

enum Images {
    enum TabBar {
    static var overview = UIImage(named: "overview_tab")
    static var session = UIImage(named: "session_tab")
    static var progress = UIImage(named: "progress_tab")
    static var settings = UIImage(named: "settings_tab")
 }
    enum Common {
        
    }
}
    
enum Fonts {
    static func helveticaRegular(with size: CGFloat) -> UIFont {
        UIFont(name: "Helvetica", size: size) ?? UIFont()
        }
    }
}
