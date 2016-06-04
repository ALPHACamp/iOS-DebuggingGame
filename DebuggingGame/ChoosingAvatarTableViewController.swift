//
//  ChoosingAvatarTableViewController.swift
//  DebuggingGame
//
//  Created by Brian Hu on 6/4/16.
//  Copyright © 2016 AlphaCamp. All rights reserved.
//

import UIKit

class ChoosingAvatarTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Avatar.options.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("AvatarCell", forIndexPath: indexPath)

        cell.imageView?.image = UIImage(named: Avatar.options[indexPath.row])

        return cell
    }

    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.performSegueWithIdentifier("AvatarToName", sender: Avatar.options[indexPath.section])
    }


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "AvatarToName" {
            let destinationVC = segue.destinationViewController as! SettingNameViewController
            destinationVC.avatar = sender as? String
        }
    }

}
