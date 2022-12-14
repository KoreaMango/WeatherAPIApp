//
//  ViewController.swift
//  wanted_pre_onboarding
//
//  Created by 강민규 on 2022/08/31.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    //MARK: - Properties
    @IBOutlet weak var tableView : UITableView!

    
    //MARK: - LifeCycle
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
        getDatas()
    }

    //MARK: - CustomFunction
    func getDatas() {
        Task {
            for country in countries{
                API.shared.datas.append( try await API.shared.getData(cityId: country))
                print(API.shared.datas)
            }
            tableView.reloadData()
        }
    }

    //MARK: - TableView
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: WeatherTableViewCell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! WeatherTableViewCell
        let target = API.shared.datas[indexPath.row]
    
        cell.countryLabel?.text = target.name + " (\(countriesKR[indexPath.row]))"
        cell.tempLabel?.text = "현재 기온 : \(toCelcius(kelvin: target.main.temp))°C"
        cell.humidityLabel?.text =  " 현재 습도 : " + "\(target.main.humidity)%"
        
        DispatchQueue.global().async {
            let data = API.shared.getIconData(iconStr: target.weather.first!.icon)
            DispatchQueue.main.async {
                cell.iconImageView!.image = UIImage(data: data)
            }
        }

        return cell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return API.shared.datas.count
    }
    
    // MARK: - Navigation
    

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "next" {
            if let destination = segue.destination as? SecondViewController {
                if let index = self.tableView.indexPathForSelectedRow?.row {
                    destination.index = index
                }
            }
        }
        
    }
    
}

