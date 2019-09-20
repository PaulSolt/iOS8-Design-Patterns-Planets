//
//  Planet.swift
//  Planets
//
//  Created by Andrew R Madsen on 8/2/18.
//  Copyright © 2018 Lambda Inc. All rights reserved.
//

import UIKit

struct Planet: Codable {
//class Planet: NSCoding, Codable {

    // NSCoding -> NSCoder
//     Requires we use a class, not a Swift struct
//    func encode(with aCoder: NSCoder) {
//        <#code#>
//    }
//
//    required init?(coder aDecoder: NSCoder) {
//        <#code#>
//    }
    
    var name: String
    var imageName: String
    
    var image: UIImage {      // UIImage ERROR: Type 'Planet' does not conform to protocol 'Decodable'
        return UIImage(named: imageName)!
    }
    
    init(name: String, imageName: String) {
        self.name = name
        self.imageName = imageName
    }

}
