//
//  SecondViewController.swift
//  wanted_pre_onboarding
//
//  Created by 강민규 on 2022/08/31.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var imageViewIcon : UIImageView?
    @IBOutlet weak var labelName : UILabel?
    @IBOutlet weak var labelMain: UILabel?
    @IBOutlet weak var labelTemp: UILabel?
    @IBOutlet weak var labelMinTemp: UILabel?
    @IBOutlet weak var labelMaxTemp: UILabel?
    @IBOutlet weak var labelHumidity: UILabel?
    @IBOutlet weak var labelPressure : UILabel?
    @IBOutlet weak var labelFeelLike : UILabel?
    @IBOutlet weak var labelWind : UILabel?
    var index : Int = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()

        print(index)
        // Do any additional setup after loading the view.
    }
    



}
