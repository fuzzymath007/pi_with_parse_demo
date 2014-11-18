//
//  ViewController.swift
//  pi_with_parse_demo
//
//  Created by Matthew Chess on 11/18/14.
//  Copyright (c) 2014 Matthew Chess. All rights reserved.
//

import UIKit
import Parse


class ViewController: UIViewController {

    @IBAction func flipLight(sender: AnyObject) {
        if isLightOn == false{
            isLightOn = true
        }else if isLightOn == true{
            isLightOn = false
        }
        
        
        var query = PFQuery(className: "isLightOn")
        query.getObjectInBackgroundWithId("c7g9BfmrSm", block: { (isLightOn: PFObject!, error:NSError!) -> Void in
            if error != nil{
                println(error)
            }else{
                isLightOn =
            }
        })

    }

    
    var isLightOn:Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var query = PFQuery(className: "isLightOn")
        query.getObjectInBackgroundWithId("c7g9BfmrSm", block: { (isLightOn: PFObject!, error:NSError!) -> Void in
            if error != nil{
            println(error)
            }else{
            println(isLightOn)
            }
        })

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

