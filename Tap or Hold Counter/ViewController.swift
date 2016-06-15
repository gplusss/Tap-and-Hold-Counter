//
//  ViewController.swift
//  Tap or Hold Counter
//
//  Created by Vladimir Saprykin on 15.06.16.
//  Copyright © 2016 Vladimir Saprykin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var countLabel: UILabel!
    
    @IBOutlet weak var tapAndHoldLabel: UIButton!
    
    @IBOutlet weak var resetLabel: UIBarButtonItem!
    
    
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "TAP & HOLD COUNTER"
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

