//
//  ImageCacheManager.swift
//  wanted_pre_onboarding
//
//  Created by 강민규 on 2022/09/04.
//

import Foundation
import UIKit

class ImageCacheManager {
    static let shared = NSCache<NSString, UIImage>()
    private init() {}
}
