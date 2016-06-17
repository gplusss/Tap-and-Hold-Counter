//
//  ViewController.swift
//  Tap or Hold Counter
//
//  Created by Vladimir Saprykin on 15.06.16.
//  Copyright © 2016 Vladimir Saprykin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    
    @IBOutlet weak var countLabel: UILabel!
    
    @IBOutlet weak var tapAndHoldLabel: UIButton!
    
    @IBOutlet weak var resetLabel: UIBarButtonItem!
    
   

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "TAP & HOLD COUNTER"
        resetLabel.title = "Reset"
        
        let longPress = UILongPressGestureRecognizer(target: self, action: #selector(ViewController.startTapAndHoldLabel(_:)))
        longPress.minimumPressDuration = 2
        tapAndHoldLabel.addGestureRecognizer(longPress)
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(ViewController.startTapAndHoldLabel(_:)))
        tap.requireGestureRecognizerToFail(longPress)
        tapAndHoldLabel.addGestureRecognizer(tap)
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }

    @IBAction func startTapAndHoldLabel(sender: UIButton) {
        
        count += 1
        countLabel.text = String(count)
        print("tap")
        
    }

  }


    



