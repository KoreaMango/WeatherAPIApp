//
//  API.swift
//  wanted_pre_onboarding
//
//  Created by 강민규 on 2022/08/31.
//

import Foundation
import UIKit
// 예제 : https://api.openweathermap.org/data/2.5/weather?q={city name}&appid={API key}
// 아이콘 이미지 링크 : https://api.openweathermap.org/img/w/10d.png

private let apiKey = "7d44cd3f14e73a7ec226c506bb668083"
private let baseURL = "https://api.openweathermap.org"
private let query = "/data/2.5/weather?q="
private let apiQ = "&appid="

class API {
    public static let shared = API()
    
     func getData(cityId : String) async throws -> Datas {
        guard let url = URL(string: baseURL + query + cityId + apiQ + apiKey) else {
            throw ErrorMessage.invalidURL
        }
        
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
            throw ErrorMessage.notTwoZeroZero
        }
        
        let result = try JSONDecoder().decode(Datas.self, from: data)
        
        return result
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

