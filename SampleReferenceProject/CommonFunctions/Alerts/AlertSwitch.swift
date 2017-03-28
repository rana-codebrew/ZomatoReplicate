//
//  AlertSwitch.swift
//  SampleReferenceProject
//
//  Created by Sierra 4 on 22/03/17.
//  Copyright © 2017 code-brew. All rights reserved.
//

import Foundation
import SwiftMessages

class AlertSwitch {
    
    class func generateAlert(typeAlert: String, themeType: String, presentationStyle: String, title: String, body: String, durationAlert: String) {
        
        let alertView: MessageView
        var alertConfig = SwiftMessages.Config()
        
        switch typeAlert {
        case "Tab":
            alertView = MessageView.viewFromNib(layout: .TabView)
        case "Card":
            alertView = MessageView.viewFromNib(layout: .CardView)
        case "Status":
            alertView = MessageView.viewFromNib(layout: .StatusLine)
        default:
            alertView = try! SwiftMessages.viewFromNib()
        }
        
        alertView.configureContent(title: title, body: body, iconImage: nil, iconText: nil, buttonImage: nil, buttonTitle: "Hide", buttonTapHandler: { _ in SwiftMessages.hide() })
        
        switch themeType {
        case "Info":
            alertView.configureTheme(.info)
        case "Success":
            alertView.configureTheme(.success)
        case "Warning":
            alertView.configureTheme(.warning)
        case "Error":
            alertView.configureTheme(.error)
        default:
            // custom alert theme creation in the default case
            let iconText = ["🐸", "🐷", "🐬", "🐠", "🐍", "🐹", "🐼"].sm_random()
            alertView.configureTheme(backgroundColor: UIColor.green, foregroundColor: UIColor.white, iconImage: nil, iconText: iconText)
            alertView.button?.setImage(Icon.ErrorSubtle.image, for: .normal)
            alertView.button?.setTitle(nil, for: .normal)
            alertView.button?.backgroundColor = UIColor.clear
            alertView.button?.tintColor = UIColor.green.withAlphaComponent(0.7)
        }
        
        switch presentationStyle {
        case "Top":
            alertConfig.presentationStyle = .top
        case "Bottom":
            alertConfig.presentationStyle = .bottom
        default:
            break
        }
        switch durationAlert {
        case "Forever" :
            alertConfig.duration = .forever
        case "Automatic":
            alertConfig.duration = .automatic
        default:
            break
        }
        
        // display the alert
        SwiftMessages.show(config: alertConfig, view: alertView)
        
    }
}
