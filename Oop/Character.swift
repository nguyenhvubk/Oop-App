//
//  Character.swift
//  Oop
//
//  Created by Hoang Vu on 8/16/16.
//  Copyright © 2016 ViNZ. All rights reserved.
//

import Foundation

class Charactor {
    
    private var _hp: Int = 100
    private var _attackPwr: Int = 100
    
    var attackPwr: Int {
        get {
            return _attackPwr
        }
    }
    
    var hp: Int {
        get {
            return _hp
        }
    }
    
    var isAlive: Bool {
        get {
            if hp <= 0 {
                return false
            } else {
                return true
            }
        }
    }
    
    init (startingHp: Int, AttackPwr: Int){
        _hp = startingHp
        _attackPwr = AttackPwr
    }
    
    func attemptAttack (enemyAttackPwr: Int) -> Bool{
        _hp -= enemyAttackPwr
        return true
    }
    
}