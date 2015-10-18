//
//  MixTableViewController.swift
//  Coding_Challenge
//
//  Created by Hesham Salman on 10/15/15.
//  Copyright © 2015 Hesham Salman. All rights reserved.
//

import UIKit

class MixTableViewController: UIViewController {
    var mixes: [Mix]?
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        RestApiManager.sharedInstance.getMixSet { response, error in
            if let m = response.mixSet?.mixes {
                self.mixes = m
            } else {
                print("Houston, we have a problem (unable to get mixes)");
            }
        }
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension MixTableViewController : UITableViewDataSource {
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("MixTableViewCell", forIndexPath: indexPath) as! MixTableViewCell
        if let mixObject = mixes?[indexPath.item] {
            cell.mix = mixObject
        }
        return cell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mixes?.count ?? 0
    }
}

extension MixTableViewController: UITableViewDelegate {
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 406.0;
    }
    
    func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
        self.performSegueWithIdentifier("showMix", sender: indexPath)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showMixDetail" {
            let controller = segue.destinationViewController as! MixViewController
            let index = (sender as! NSIndexPath).item
            controller.mix = mixes?[index]
        }
    }
}
