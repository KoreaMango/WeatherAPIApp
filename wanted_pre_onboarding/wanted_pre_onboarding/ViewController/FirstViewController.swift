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
    let cellIdentifier: String = "Cell"
    let countries : [String] = [ "GongJu", "GwangJu", "Gumi", "Gunsan", "Daegu", "Daejeon", "Mokpo", "Busan", "Seosan", "Seoul", "Sokcho", "Suwon", "Suncheon", "Ulsan", "Iksan", "Jeonju", "Jeju", "Cheonan", "Cheongju", "Chuncheon" ]
    let countriesKR : [String] = [ "공주", "광주(전라남도)", "구미", "군산", "대구", "대전", "목포", "부산", "서산", "서울", "속초", "수원", "순천", "울산", "익산", "전주", "제주시", "천안", "청주", "춘천" ]
    var datas : [Datas] = []
    
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
                datas.append( try await API.shared.getData(cityId: country))
                print(datas)
                
            }
            tableView.reloadData()
            
        }
    }


    //MARK: - TableView
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
    
        cell.textLabel?.text = datas[indexPath.row].name + " (\(countriesKR[indexPath.row]))"
        cell.detailTextLabel?.text = "현재 기온 : " + "\(datas[indexPath.row].main.temp)°F" + " 현재 습도 : " + "\(datas[indexPath.row].main.humidity)%"
        
        DispatchQueue.global().async { [self] in
            let data = API.shared.getIconData(iconStr: datas[indexPath.row].weather.first!.icon)
            DispatchQueue.main.async {
                cell.imageView!.image = UIImage(data: data)
            }
        }
        
        
        
        return cell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datas.count
    }
    
    // MARK: - Navigation
    

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        
    }
    
}

