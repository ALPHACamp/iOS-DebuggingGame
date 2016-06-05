//
//  Unit.swift
//  DebuggingGame
//
//  Created by Brian Hu on 6/5/16.
//  Copyright © 2016 AlphaCamp. All rights reserved.
//
import UIKit
class Unit {
    var name: String
    var avatar: String?
    var attack: Float
    var defense: Float
    static let champion = Unit.setChampion()
    
    init(name: String, avatar: String?, attack: Float, defense: Float) {
        self.name = name
        self.avatar = avatar
        self.attack = attack
        self.defense = defense
    }
    
    private static func setChampion() -> Unit {
        let defaults = NSUserDefaults.standardUserDefaults()
        return Unit(name: defaults.valueForKey(Constant.name) as! String, avatar: defaults.valueForKey(Constant.avatar) as? String, attack: Float(defaults.valueForKey(Constant.attack) as! String)!, defense: Float(defaults.valueForKey(Constant.defense) as! String)!)
    }
    
    static func randomEnemy() -> Unit {
        return Unit(name: String.randomName(6), avatar: nil, attack: Float(arc4random_uniform(900))/10.0, defense: Float(arc4random_uniform(900))/10.0)
    }
}