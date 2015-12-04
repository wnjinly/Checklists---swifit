//
//  ViewController.swift
//  Checklists
//
//  Created by Water on 15/12/4.
//  Copyright © 2015年 Water. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 100
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("ChecklistItem",forIndexPath: indexPath)

        let label = self.view.viewWithTag(1000) as! UILabel!
        if indexPath.row == 0{
            label.text = "上课"
        }else if indexPath.row == 1{
            label.text = "吃饭"
        }else if indexPath.row == 2{
            label.text = "运动"
        }else if indexPath.row == 3{
            label.text = "打豆豆"
        }
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let cell:UITableViewCell = tableView.cellForRowAtIndexPath(indexPath)!
        if cell.accessoryType == UITableViewCellAccessoryType.None{
            cell.accessoryType = UITableViewCellAccessoryType.Checkmark
        }else {
            cell.accessoryType = UITableViewCellAccessoryType.None
        }
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }


}

