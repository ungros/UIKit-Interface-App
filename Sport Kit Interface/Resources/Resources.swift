//
//  File.swift
//  Sport Kit Interface
//
//  Created by Roman on 11.07.2022.
//

import UIKit


enum R {

    enum Strings {
        enum TabBar {
            static func title(for tab: Tabs) -> String {
                switch tab {
                case .overview: return "Overview"
                case .session: return "Session"
                case .progress: return "Progress"
                case .settings: return "Settings"
                }
            }
        }

        enum NavBar {
            static let overview = "Today"
            static let session = "High Intensity Cardio"
            static let progress = "Workout Progress"
            static let settings = "Settings"
        }

        enum Overview {
            static let allWorcoutsButton = "All Workouts"
        }

        enum Session {
            static let navBarStart = "Start"
            static let navBarPause = "Pause"
            static let navBarFinish = "Finish"

            static let elapsedTime = "Elapsed Time"
            static let remainingTime = "Remaining Time"
            
            static let completed = "Completed"
            static let remaining = "Remaining"
            
            static let workoutStats = "Workout stats"
            static let stepsCounter = "Steps counter"
            
            static let workoutStats1 = "Workout stats"
            static let averagePace = "Average pace"
            static let heartRate = "Heart rate"
            static let totalDistance = "Total distance"
            static let totalSteps = "Total steps"
            
            
        }

        enum Progress {
            static let navBarLeft = "Export"
            static let navBarRight = "Details"
        }
//xxx
        enum Settings {}
    }

    
    
    enum Images {
        enum TabBar {
            static func icon(for tab: Tabs) -> UIImage? {
                switch tab {
                case .overview: return UIImage(named: "overview_tab")
                case .session: return UIImage(named: "session_tab")
                case .progress: return UIImage(named: "progress_tab")
                case .settings: return UIImage(named: "settings_tab")
                }
            }
        }
        enum Session {
            static let hearthBeat = UIImage(named: "hearth_beat")
            static let stats = UIImage(named: "")
            
            enum Stats {
                static let distance = UIImage(named: "stats_totalDistance")
                static let heartRate = UIImage(named: "stats_heartRate")
                static let steps = UIImage(named: "stats_totalSteps")
                static let pace = UIImage(named: "stats_averagePace")
            }
        }

        enum Common {
            static let downArrow = UIImage(named: "all_workouts")
            static let add = UIImage(named: "add_icon")
        }
    }

    enum Fonts {
        static func helvelticaRegular(with size: CGFloat) -> UIFont {
            UIFont(name: "Helvetica", size: size) ?? UIFont()
        }
    }
    
    enum Colors {
        static let active = UIColor(hexString: "#A834D1")
        static let inactive = UIColor(hexString: "#929DA5")

        static let background = UIColor(hexString: "#F8F9F9")
        static let separator = UIColor(hexString: "#E8ECEF")
        static let secondary = UIColor(hexString: "#F0F3FF")

        static let titleGray = UIColor(hexString: "#545C77")
        static let subtitleGray = UIColor(hexString: "#D8D8D8")
    }
}



