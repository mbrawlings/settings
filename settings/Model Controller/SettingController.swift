//
//  SettingController.swift
//  settings
//
//  Created by Matthew Rawlings on 9/28/22.
//

import UIKit

class SettingController {
    static let settings: [Setting] = {
        let music = Setting(name: "Music", icon: #imageLiteral(resourceName: "music"),  isOn: false)
        let appStore = Setting(name: "App Store", icon: #imageLiteral(resourceName: "app store"),  isOn: false)
        let books = Setting(name: "Books", icon: #imageLiteral(resourceName: "books"), isOn: false)
        return [music, appStore, books]
    }()
    
    func toggleIsOn(setting: Setting) {
        setting.isOn = !setting.isOn
    }
}
