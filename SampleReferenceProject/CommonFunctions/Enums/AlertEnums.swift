//
//  AlertEnums.swift
//  SampleReferenceProject
//
//  Created by Sierra 4 on 22/03/17.
//  Copyright © 2017 code-brew. All rights reserved.
//

import Foundation
internal class AlertConfigure {
    enum AlertType: String {
        case tab = "Tab"
        case card = "Card"
        case status = "Status"
    }
    enum alertThemeType: String {
        case info = "Info"
        case success = "Success"
        case warning = "Warning"
        case error = "Error"
    }
    enum AlertPresentationStyle: String {
        case top = "Top"
        case bottom = "Bottom"
    }
    enum AlertDuration: String {
        case forever = "Forever"
        case automatic = "Automatic"
    }
 
}
