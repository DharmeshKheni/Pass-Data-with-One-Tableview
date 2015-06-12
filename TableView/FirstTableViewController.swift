//
//  ViewController.swift
//  TableView
//
//  Created by Jared Davidson on 1/16/15.
//  Copyright (c) 2015 Archetapp. All rights reserved.
//

import UIKit

class FirstTableViewController: UITableViewController{
    
    
    var FirstTableArray = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        FirstTableArray = ["First", "Second", "Third","Fourth"]

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return FirstTableArray.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        
        var Cell = self.tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! UITableViewCell
        
        
        Cell.textLabel?.text = FirstTableArray[indexPath.row]
        
        return Cell
    
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier == "detailView") {
            var vc = segue.destinationViewController as! ViewController
            var indexPath : NSIndexPath = self.tableView.indexPathForSelectedRow()!
            vc.FirstString = FirstTableArray[indexPath.row]
        }
    }
}

