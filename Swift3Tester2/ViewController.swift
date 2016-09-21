//
//  ViewController.swift
//  Swift3Tester2
//
//  Created by 龚浩 on 16/9/20.
//  Copyright © 2016年 龚浩. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer:GHTimer!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let timeTimer = GHTimer(interval: 1, repeats: true, repeatRun: countTime)
        timeTimer.start()
        timer = GHTimer(interval: 2, repeats: true, repeatRun: run)
        timer.start()
    }
    var count = 1
    func countTime() {
        print(count)
        count = 1 + count % 5
    }
    func run() {
        print("repeat: ", timer.intervalTime)
    }
    @IBAction func onClose(_ sender: UIButton) {
        if timer.running{
            print("close")
            timer.close()
        }else{
            print("start")
            timer.start()
        }
    }
    @IBAction func onPause(_ sender: UIButton) {
        if !timer.isPause {
            print("pause")
            timer.stop()
        }else {
            print("resume")
            timer.resume()
        }
    }
    @IBAction func onChangeInterval(_ sender: UIButton) {
        print("change interval")
        timer.intervalTime = 5
        timer.start()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
