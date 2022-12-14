//
//  SecondViewController.swift
//  wanted_pre_onboarding
//
//  Created by 강민규 on 2022/08/31.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var imageViewIcon : UIImageView!
    @IBOutlet weak var labelName : UILabel!
    @IBOutlet weak var labelMain: UILabel!
    @IBOutlet weak var labelTemp: UILabel!
    @IBOutlet weak var labelMinTemp: UILabel!
    @IBOutlet weak var labelMaxTemp: UILabel!
    @IBOutlet weak var labelHumidity: UILabel!
    @IBOutlet weak var labelPressure : UILabel!
    @IBOutlet weak var labelFeelLike : UILabel!
    @IBOutlet weak var labelWind : UILabel!
    var index : Int = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
    }
    
    func updateUI(){
        
        let data = API.shared.datas[index]
        
        self.imageViewIcon.loadImage(API.shared.iconURL(iconStr: data.weather.first!.icon))
        
        self.labelName.text = data.name + " (\(countriesKR[index]))"
        self.labelMain.text = data.weather.first?.main
        self.labelTemp.text = "\(toCelcius(kelvin: data.main.temp))°C"
        self.labelWind.text = "\(data.wind.speed)m/s"
        self.labelHumidity.text = "\(data.main.humidity)%"
        self.labelPressure.text = "\(data.main.pressure)hPa"
        self.labelMaxTemp.text = "\(toCelcius(kelvin: data.main.temp_max))°C"
        self.labelMinTemp.text = "\(toCelcius(kelvin: data.main.temp_min))°C"
        self.labelFeelLike.text = "\(toCelcius(kelvin: data.main.feels_like))°C"
    }
}
