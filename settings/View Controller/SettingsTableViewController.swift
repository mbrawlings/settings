//
//  SettingsTableViewController.swift
//  settings
//
//  Created by Matthew Rawlings on 9/28/22.
//

import UIKit

class SettingsTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return SettingController.settings.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "settingCell", for: indexPath) as? SettingsTableViewCell else { return UITableViewCell()}

        let setting = SettingController.settings[indexPath.row]
        cell.delegate = self
        cell.updateViews(setting: setting)
        return cell
    }
}

//extension SettingsTableViewController: SettingCellDelegate {
//    func settingSwitchToggled(for cell: SettingsTableViewCell) {
//        guard let indexPath = tableView.indexPath(for: cell) else { return }
//        let setting = SettingController.settings[indexPath.row]
//    }
//    
//    
//}
