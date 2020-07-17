//
//  BountyInfo.swift
//  BountyList
//
//  Created by donghun on 2020/07/17.
//  Copyright © 2020 donghun. All rights reserved.
//

import UIKit

struct BountyInfo {
    var name: String
    var bounty: Int
    
    var img : UIImage? {
        return UIImage(named: "\(name).jpg")
    }
    
    init(name : String, bounty: Int) {
        self.name = name
        self.bounty = bounty
    }
  
}
