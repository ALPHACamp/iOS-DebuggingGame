//
//  ProfileViewController.swift
//  DebuggingGame
//
//  Created by Brian Hu on 6/3/16.
//  Copyright © 2016 AlphaCamp. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var attackLabel: UILabel!
    @IBOutlet weak var defenseLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text  = Unit.champion.name
        attackLabel.text = "attack: \(Unit.champion.attack)"
        defenseLabel.text = "defense: \(Unit.champion.defense)"
        avatarImageView.image = UIImage(named: Unit.champion.avatar!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
