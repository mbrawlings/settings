//
//  SettingsTableViewCell.swift
//  settings
//
//  Created by Matthew Rawlings on 9/28/22.
//

import UIKit

protocol SettingCellDelegate: AnyObject {
    //Step one: Declare protocol
    func settingSwitchToggled(for cell: SettingsTableViewCell)
}

class SettingsTableViewCell: UITableViewCell {

    //MARK: - Outlets
    @IBOutlet weak var settingImageView: UIImageView!
    @IBOutlet weak var settingLabel: UILabel!
    @IBOutlet weak var settingSwitch: UISwitch!
    
    //Step two: create the delegate
    weak var delegate: SettingCellDelegate?
    
    func updateViews(setting: Setting) {
        settingLabel.text = setting.name
        settingImageView.image = setting.icon
        settingSwitch.isOn = setting.isOn
        
        backgroundColor = setting.isOn ? .cyan : .white
    }
    
    
    //MARK: - Action
    @IBAction func settingSwitchToggled(_ sender: Any) {
        delegate?.settingSwitchToggled(for: self)
    }
}
