//
//  ViewController.swift
//  Egg Timer
//
//  Created by Ajitesh on 07/07/17.
//  Copyright © 2017 Ajitesh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var value: UILabel!
    
    var timer = Timer()
    
    var x = 210
    func processedTime(){
        if x > 0 {
            x -= 1
            value.text = String(x)
        }
        
        
    }
    
    @IBAction func play(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.processedTime), userInfo: nil, repeats: true)
    }
    
    @IBAction func pause(_ sender: Any) {
        timer.invalidate()
    }
    
    @IBAction func minus(_ sender: Any) {
        if x > 10 {
        x -= 10
        value.text = String(x)
        }
    }
    
    @IBAction func plus(_ sender: Any) {
        x += 10
        value.text = String(x)
    }
    
    @IBAction func reset(_ sender: Any) {
        x = 210
        value.text = String(x)
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

