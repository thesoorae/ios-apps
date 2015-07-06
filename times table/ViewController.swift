//
//  ViewController.swift
//  times table
//
//  Created by the Soo-Rae's Mac on 7/6/15.
//  Copyright (c) 2015 sourceapps. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {

    @IBOutlet weak var table: UITableView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var sliderValue: UISlider!
    @IBAction func sliderMove(sender: AnyObject) {table.reloadData()
        label.text=String(Int(sliderValue.value*20))
        
            }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return 20
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let cell=UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        let timesTable=Int(sliderValue.value * 20)
        cell.textLabel?.text=String(timesTable * (indexPath.row + 1))
        
        return cell
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

