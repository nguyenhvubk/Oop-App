//
//  Kimara.swift
//  Oop
//
//  Created by Hoang Vu on 8/16/16.
//  Copyright © 2016 ViNZ. All rights reserved.
//

import Foundation

class Kimara: Enemy {
    
    let IMMUNE_MAX = 15
    
    override var loot: [String] {
        return ["tough hide","kimara venom","rare trident"]
    }
    override var type: String {
        return "Kimara"
    }
    
    override func attemptAttack(enemyAttackPwr: Int) -> Bool {
        if enemyAttackPwr >= IMMUNE_MAX {
            return super.attemptAttack(enemyAttackPwr)
        } else {
            return false
        }
    }
}