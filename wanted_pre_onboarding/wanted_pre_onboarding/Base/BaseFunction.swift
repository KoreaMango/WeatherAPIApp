//
//  BaseFunction.swift
//  wanted_pre_onboarding
//
//  Created by 강민규 on 2022/09/03.
//

import Foundation


func toCelcius(kelvin : Double) -> Double {
    var celcius = kelvin - 273.15
    celcius = round(celcius * 100)
    return celcius / 100
}
