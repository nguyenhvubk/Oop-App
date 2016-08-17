//
//  Player.swift
//  Oop
//
//  Created by Hoang Vu on 8/16/16.
//  Copyright © 2016 ViNZ. All rights reserved.
//

import Foundation

class Player: Charactor {
    private var _name: String = "Player"
    
    var name: String {
        get {
            return _name
        }
    }
    
    private var _inventory = [String]()
    
    var inventory: [String] {
        return _inventory
    }
    
    func addItemInventory (item: String){
        _inventory.append(item)
    }
    
    convenience init (name: String, hp: Int, attackPwr: Int){
        self.init(startingHp: hp, AttackPwr: attackPwr)
        _name = name
    }
    
}