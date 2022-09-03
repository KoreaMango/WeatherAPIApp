//
//  Extension.swift
//  wanted_pre_onboarding
//
//  Created by 강민규 on 2022/09/04.
//

import Foundation
import UIKit

extension UIImageView {
    func loadImage(_ link: String) {
      
        let cacheKey = NSString(string: link)
        
        if let cachedImage = ImageCacheManager.shared.object(forKey: cacheKey){
            self.image = cachedImage
            return
        }
        
        DispatchQueue.global(qos: .background).async {
            guard let url = URL(string : link ) else {return}
            URLSession.shared.dataTask(with: url) { data, response, error in
                if let _ = error {
                    DispatchQueue.main.async { [weak self] in
                        self?.image = UIImage()
                    }
                    return
                }
                DispatchQueue.main.async { [weak self] in
                    if let data = data , let image = UIImage(data: data){
                        ImageCacheManager.shared.setObject(image, forKey: cacheKey)
                        self?.image = image
                    }
                }
            }.resume()
        }
    }
}
