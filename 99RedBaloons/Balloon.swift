//
//  File.swift
//  99RedBaloons
//
//  Created by Dominik Butz on 08/10/14.
//  Copyright (c) 2014 Duoyun. All rights reserved.
//

import Foundation
import UIKit

struct Balloon {
    
    var number = 0
    var image = UIImage(named: "")
    
    // by default, not possible to mutate struct properties. mutating keyword is required to do this
   mutating func assignRandomImage() {
        
        var randomNumber: Int = Int(arc4random_uniform(UInt32(4))) + 1
        
        switch randomNumber {
        case 1:
            image = UIImage(named: "RedBalloon1.jpg")
        case 2:
            image = UIImage(named: "RedBalloon2.jpg")
        case 3:
            image = UIImage(named: "RedBalloon3.jpg")
        case 4:
            image = UIImage(named: "RedBalloon4.jpg")
        default:
            image = UIImage(named: "BerlinTVTower.jpg")
            
        }
        
        
        
        
    }
    
    
}