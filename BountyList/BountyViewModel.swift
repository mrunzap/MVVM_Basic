//
//  BountyViewModel.swift
//  BountyList
//
//  Created by donghun on 2020/07/18.
//  Copyright © 2020 donghun. All rights reserved.
//

import UIKit

class BountyViewModel {
    var bountyList : [BountyInfo] = [
       BountyInfo(name: "brook", bounty: 33000000),
       BountyInfo(name: "chopper", bounty: 50),
       BountyInfo(name: "franky", bounty: 44000000),
       BountyInfo(name: "luffy", bounty: 300000000),
       BountyInfo(name: "nami", bounty: 16000000),
       BountyInfo(name: "robin", bounty: 80000000),
       BountyInfo(name: "sanji", bounty: 77000000),
       BountyInfo(name: "zoro", bounty: 120000000)
    ]
   var sortedList: [BountyInfo] {
        let sortedList = bountyList.sorted { prev, next  in
            return prev.bounty > next.bounty
        }
        
        return sortedList
    }
    
    var numberOfRowsInSection : Int {
        return bountyList.count
    }
    
    func getBountyInfo(at index: Int) -> BountyInfo {
        return sortedList[index]
    }
}
