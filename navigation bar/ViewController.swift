//
//  ViewController.swift
//  navigation bar
//
//  Created by Lovriakov, Ilya on 30/06/16.
//  Copyright © 2016 Lovriakov, Ilya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = Timer()

    var timerResult = TimerResult()
    
    @IBOutlet weak var timerLabel: UILabel!
    
    @IBAction func play(_ sender: AnyObject) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.increaseTimer), userInfo: nil, repeats: true)
    }
    
    @IBAction func reset(_ sender: AnyObject) {
        timer.invalidate()
        timerResult = TimerResult()
        timerLabel.text = timerResult.textRepresentation()
    }
    
    @IBAction func pause(_ sender: AnyObject) {
        timer.invalidate()
    }
    
    
    func increaseTimer() {
        timerResult.tick()
        timerLabel.text = timerResult.textRepresentation()
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
