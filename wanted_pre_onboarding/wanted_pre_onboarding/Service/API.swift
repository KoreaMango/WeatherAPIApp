//
//  API.swift
//  wanted_pre_onboarding
//
//  Created by 강민규 on 2022/08/31.
//

import Foundation
import UIKit
// https://api.openweathermap.org/data/2.5/weather?q={city name}&appid={API key}

private let apiKey = "7d44cd3f14e73a7ec226c506bb668083"
private let baseURL = "api.openweathermap.org"

class API {
    public static var shared = API()
    private var weathers : [Weather] = []
    
    func requestURL() {
        
    }
    
    func getData(){
        
    }
    
    func getCountry(index : Int) -> String {
        
        return ""
    }
    
    func getWeatherIcon(index: Int) -> UIImage {
        
        return UIImage()
    }
    func getTemperature(index: Int) -> Int {
        
        return 0
    }
    func getHumidity(index: Int) -> Int {
        
        return 0
    }
}
