//
//  Devil.swift
//  Oop
//
//  Created by Hoang Vu on 8/16/16.
//  Copyright © 2016 ViNZ. All rights reserved.
//

import Foundation

class Devil: Enemy {
    override var loot: [String]{
        return ["magic wand","dark amulet","salted pork"]
    }
    override var type: String{
        return "Devil"
    }
}
