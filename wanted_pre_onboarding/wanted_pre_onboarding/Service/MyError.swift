//
//  MyError.swift
//  wanted_pre_onboarding
//
//  Created by 강민규 on 2022/08/31.
//

import Foundation

enum ErrorMessage: String, Error {
    
    case notTwoZeroZero = "연결을 실패했습니다."
    case invalidURL = "존재하지 않는 URL입니다."
    case noImage = "이미지를 찾을 수 없습니다."
    
}
