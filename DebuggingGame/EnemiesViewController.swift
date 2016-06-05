//
//  EnemiesViewController.swift
//  DebuggingGame
//
//  Created by Brian Hu on 6/5/16.
//  Copyright © 2016 AlphaCamp. All rights reserved.
//

import UIKit

class EnemiesViewController: UIViewController {

    @IBAction func battle(sender: AnyObject) {
        self.performSegueWithIdentifier("BattleSegue", sender: sender)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "BattleSegue" {
            let destinationVC = segue.destinationViewController as! BattleViewController
            let button = sender as! UIButton
            destinationVC.enemyImage = button.imageView?.image
            
        }
    }


}
