//
//  BattleViewController.swift
//  DebuggingGame
//
//  Created by Brian Hu on 6/5/16.
//  Copyright © 2016 AlphaCamp. All rights reserved.
//

import UIKit

class BattleViewController: UIViewController {

    @IBOutlet weak var enemyAvatarImageView: UIImageView!
    @IBOutlet weak var enemyNameLabel: UILabel!
    @IBOutlet weak var enemyAttackLabel: UILabel!
    @IBOutlet weak var enemyDefenseLabel: UILabel!
    var enemyImage: UIImage?
    
    @IBOutlet weak var enemyHealth: UIProgressView!
    
    @IBOutlet weak var championImageView: UIImageView!
    @IBOutlet weak var championNameLabel: UILabel!
    @IBOutlet weak var championAttackLabel: UILabel!
    @IBOutlet weak var championDefenseLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        enemyAvatarImageView.image = enemyImage
        let enemy = Unit.randomEnemy()
        enemyNameLabel.text = enemy.name
        enemyAttackLabel.text = "attack: \(enemy.attack)"
        enemyDefenseLabel.text = "defense: \(enemy.defense)"
        
        championImageView.image = UIImage(named: Unit.champion.avatar!)
        championNameLabel.text = Unit.champion.name
        championAttackLabel.text = "attack: \(Unit.champion.attack)"
        championDefenseLabel.text = "defense \(Unit.champion.defense)"
    }

    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animateWithDuration(1.2, animations: {
            self.view.backgroundColor = UIColor(red: 1.0, green: 67/255.0, blue: 52/255.0, alpha: 0.7)
            }) {
                if $0 {
                    UIView.animateWithDuration(0.8, animations: { 
                        self.view.backgroundColor = UIColor.whiteColor()
                        self.enemyHealth.setProgress(0.0, animated: true)
                        }, completion: {
                            if $0 {
                                let alertController = UIAlertController(title: "Contgrats!", message: "You just kicked the enemy's ass", preferredStyle: .Alert)
                                let ok = UIAlertAction(title: "I am awesome", style: .Default, handler: { (UIAlertAction) in
                                    self.dismissViewControllerAnimated(true, completion: nil)
                                })
                                alertController.addAction(ok)
                                self.presentViewController(alertController, animated: true, completion: nil)
                            }
                    })
                }
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
