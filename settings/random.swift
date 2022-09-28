//
//  random.swift
//  settings
//
//  Created by Matthew Rawlings on 9/28/22.
//

import Foundation

extension SettingsTableViewController: SettingCellDelegate {
    func settingSwitchToggled(for cell: SettingsTableViewCell) {
        guard let indexPath = tableView.indexPath(for: cell) else { return }
        let setting = SettingController.settings[indexPath.row]
    }
    
    
}
