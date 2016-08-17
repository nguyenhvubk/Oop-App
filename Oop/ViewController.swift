//
//  ViewController.swift
//  Oop
//
//  Created by Hoang Vu on 8/16/16.
//  Copyright © 2016 ViNZ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var printLbl: UILabel!
    @IBOutlet weak var enemyHpLbl: UILabel!
    @IBOutlet weak var playerHpLbl: UILabel!
    @IBOutlet weak var enemyImg: UIImageView!
    @IBOutlet weak var chestBtn: UIButton!
    
    var player: Player!
    var enemy: Enemy!
    var chestMess: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        player = Player(name: "ViNZ", hp: 110, attackPwr: 20)
        playerHpLbl.text = "\(player.hp) HP"
        generateRandomEnemy()
                
    }

    func generateRandomEnemy () {
        let rand = Int(arc4random_uniform(2))
        
        if rand == 0 {
            enemy = Kimara (startingHp: 50, AttackPwr: 12)
        } else {
            enemy = Devil(startingHp: 60, AttackPwr: 15)
        }
        enemyHpLbl.hidden = false
        enemyHpLbl.text = "\(enemy.hp) HP"
        enemyImg.hidden = false
        printLbl.text = "\(player.name) meet \(enemy.type)"
    }
    
    @IBAction func onChestTapped(sender: AnyObject) {
        chestBtn.hidden = true
        printLbl.text = chestMess
        NSTimer.scheduledTimerWithTimeInterval(2.0, target: self, selector: "generateRandomEnemy", userInfo: nil, repeats: false)
    }

    @IBAction func onAtackTapped(sender: AnyObject) {
        if enemyImg.hidden == false {
        if enemy.attemptAttack(player.attackPwr){
            printLbl.text = "Attacked \(enemy.type) for \(player.attackPwr) HP"
            enemyHpLbl.text = "\(enemy.hp)"
        } else {
            printLbl.text = "Attack was unsuccessful!"
        }
        
        if let loot = enemy.dropLoot(){
            chestMess = "\(player.name) found \(loot)"
            chestBtn.hidden = false
            player.addItemInventory(loot)
        }
        if !enemy.isAlive {
            enemyImg.hidden = true
            printLbl.text = "Killed \(enemy.type)"
            enemyHpLbl.text = ""
        }
    }
    }
}

