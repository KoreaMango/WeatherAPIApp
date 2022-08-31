//
//  Model.swift
//  wanted_pre_onboarding
//
//  Created by 강민규 on 2022/08/31.
//

/*
{"coord":
        {"lon":126.9156,"lat":35.1547},
"weather":
        [{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04d"}],
"base":
        "stations",
"main":
     {   "temp":296.8,
         "feels_like":297.26,
         "temp_min":296.8,
         "temp_max":296.8,
         "pressure":1007,
         "humidity":78,
         "sea_level":1007,
         "grnd_level":1002
     },
"visibility":
        10000,
"wind":
        {"speed":2.94,"deg":332,"gust":5.08},
"clouds":
        {"all":97},
"dt":
        1661937465,
"sys":
    {    "country":"KR",
         "sunrise":1661893435,
         "sunset":1661940131
     },
"timezone":
        32400,
"id":
        1841811,
"name":
        "Gwangju",
"cod":
        200
 }
 
 
 */

import Foundation
import UIKit

struct Datas : Codable{
    var weather : [Weather]
    var main : Main
    var name : String
}

struct Main : Codable {
    var temp : Double
    var humidity : Int
    var feels_like : Double
    var temp_min : Double
    var temp_max : Double
    var pressure : Int
}

struct Weather : Codable {
    var main : String
    var icon : String
}
