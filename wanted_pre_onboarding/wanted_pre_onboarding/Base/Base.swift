//
//  Base.swift
//  wanted_pre_onboarding
//
//  Created by 강민규 on 2022/09/03.
//

import Foundation

let cellIdentifier: String = "Cell"
let countries : [String] = [ "GongJu", "GwangJu", "Gumi", "Gunsan", "Daegu", "Daejeon", "Mokpo", "Busan", "Seosan", "Seoul", "Sokcho", "Suwon", "Suncheon", "Ulsan", "Iksan", "Jeonju", "Jeju", "Cheonan", "Cheongju", "Chuncheon" ]
let countriesKR : [String] = [ "공주", "광주(전라남도)", "구미", "군산", "대구", "대전", "목포", "부산", "서산", "서울", "속초", "수원", "순천", "울산", "익산", "전주", "제주시", "천안", "청주", "춘천" ]


func toCelcius(kelvin : Double) -> Double {
    var celcius = kelvin - 273.15
    celcius = round(celcius * 100)
    return celcius / 100
}
