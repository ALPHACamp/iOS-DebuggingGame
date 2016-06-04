//
//  SettingNameViewController.swift
//  DebuggingGame
//
//  Created by Brian Hu on 6/4/16.
//  Copyright © 2016 AlphaCamp. All rights reserved.
//

import UIKit

class SettingNameViewController: UIViewController {

    var avatar: String?
    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBAction func startGame(sender: AnyObject) {
        guard nameTextField.text?.characters.count > 0 else {
            return
        }
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setValue(nameTextField.text!, forKey: Constant.name)
        defaults.setValue(avatar, forKey: Constant.avatar)
        defaults.setValue("9", forKey: Constant.attack)
        defaults.setValue("8", forKey: Constant.defense)
        defaults.synchronize()
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let mainVC = sb.instantiateViewControllerWithIdentifier("MainVC")
        self.presentViewController(mainVC, animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.avatarImageView.image = UIImage(named: avatar!)
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
