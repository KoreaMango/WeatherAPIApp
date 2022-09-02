//
//  WeatherTableViewCell.swift
//  wanted_pre_onboarding
//
//  Created by 강민규 on 2022/09/02.
//

import UIKit

class WeatherTableViewCell: UITableViewCell {
    //MARK: - Properties
    @IBOutlet weak var iconImageView : UIImageView?
    @IBOutlet weak var tempLabel : UILabel?
    @IBOutlet weak var humidityLabel : UILabel?
    @IBOutlet weak var countryLabel : UILabel?
    
    

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
