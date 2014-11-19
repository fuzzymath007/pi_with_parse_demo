//
//  ViewController.swift
//  pi_with_parse_demo
//
//  Created by Matthew Chess on 11/18/14.
//  Copyright (c) 2014 Matthew Chess. All rights reserved.
//

import UIKit
import Parse

var lightOn = false


class ViewController: UIViewController {

    @IBAction func flipLight(sender: AnyObject) {
        if lightOn == false{
            lightOn = true
            
        }

    }

    var lightOn = 0


    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        println(lightOn)
        
        let className = "parseStatus"
        
        var query = PFQuery(className:className)
        var x:PFObject = query.getObjectWithId("cZ23zAwncK")
        var y: AnyObject! = x["lightStatusParse"]
        println(y)
        
        var tempY:Int = y as Int
        println(tempY)
        
        lightOn = tempY
        
        println(lightOn)
        


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

