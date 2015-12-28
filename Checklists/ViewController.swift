//
//  ViewController.swift
//  Checklists
//
//  Created by Water on 15/12/4.
//  Copyright © 2015年 Water. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    
    var _row0text:String = "上课"
    var _row1text:String = "吃饭"
    var _row2text:String = "运动"
    var _row3text:String = "打豆豆"
    let _row4text = "吹泡泡"
    
    var _row0checked = false
    var _row1checked = false
    var _row2checked = false
    var _row3checked = false
    var _row4checked = false

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        _row0checked = true
        _row4checked = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("ChecklistItem",forIndexPath: indexPath)
        let label = self.view.viewWithTag(1000) as! UILabel
        
        if indexPath.row == 0{
            label.text = _row0text
        }else if indexPath.row == 1{
            label.text = _row1text
        }else if indexPath.row == 2{
            label.text = _row2text
        }else if indexPath.row == 3{
            label.text = _row3text
        }else if indexPath.row == 4{
            label.text = _row4text
        }
        
        self.configureCheckmarkForCell(cell, atIndexPath: indexPath)
        
        return cell
    }
    
    func configureCheckmarkForCell(cell:UITableViewCell, atIndexPath indexPath:NSIndexPath){
        var isChecked = false
        
        if indexPath.row == 0{
            isChecked = _row0checked
        }else if indexPath.row == 1{
            isChecked = _row1checked
        }else if indexPath.row == 2{
            isChecked = _row2checked
        }else if indexPath.row == 3{
            isChecked = _row3checked
        }else if indexPath.row == 4{
            isChecked = _row4checked
        }
        if isChecked {
            cell.accessoryType = UITableViewCellAccessoryType.Checkmark
        }else{
            cell.accessoryType = UITableViewCellAccessoryType.None
        }
        
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let cell:UITableViewCell = tableView.cellForRowAtIndexPath(indexPath)!
        
        if indexPath.row == 0{
            _row0checked = !_row0checked
        }else if indexPath.row == 1{
            _row1checked = !_row1checked
        }else if indexPath.row == 2{
            _row2checked = !_row2checked
        }else if indexPath.row == 3{
            _row3checked = !_row3checked
        }else if indexPath.row == 4{
            _row4checked = !_row4checked
        }
        self.configureCheckmarkForCell(cell, atIndexPath: indexPath)
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }
    
    
}

