
//  ViewController.swift
//  tableViewTutorial
//
//  Created by Alejandro Castillejo on 7/11/16.
//  Copyright © 2016 alejandrocastillejo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let array:Array = ["hey", "yo"]

    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Register nib
        self.tableView.registerNib(UINib(nibName: "CustomCellTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
        
        //Connect data delegate
        self.tableView.dataSource = self
        
        //Add footer
        let view = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.size.width, height: 100))
        view.backgroundColor = UIColor.blueColor()
        self.tableView.tableFooterView = view
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let identifier:String = "cell"
        
        let cell = tableView.dequeueReusableCellWithIdentifier(identifier) as? CustomCellTableViewCell
        
        cell?.label!.text = array[indexPath.row]
        
        return cell!
    }
    



}

