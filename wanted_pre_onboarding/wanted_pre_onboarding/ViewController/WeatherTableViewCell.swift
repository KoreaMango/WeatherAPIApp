//
//  WeatherTableViewCell.swift
//  wanted_pre_onboarding
//
//  Created by 강민규 on 2022/09/02.
//

import UIKit

class WeatherTableViewCell: UITableViewCell {
    //MARK: - Properties
    @IBOutlet var iconImageView : UIImageView?
    @IBOutlet var tempLabel : UILabel?
    @IBOutlet var humidityLabel : UILabel?
    @IBOutlet var countryLabel : UILabel?
    
    

    //MARK: - Default
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
