//
//  ViewController.swift
//  testApp
//
//  Created by Anantha Krishnan K G on 11/11/16.
//  Copyright © 2016 Ananth. All rights reserved.
//

import UIKit
import KGHeartBeatz

class ViewController: UIViewController {

    let toggleButton = KGHeartBeatz()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.view.addSubview(toggleButton)
       toggleButton.startAnimation()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

