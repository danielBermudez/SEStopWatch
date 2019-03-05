/*

This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
4.0 International License, by Yong Bakos.

*/

import UIKit

class ViewController: UIViewController {
    let stopwatch = Stopwatch()
    
    @IBOutlet weak var elapsedTimeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func startbuttonTapped(_ sender: UIButton) {
        print("Starting Stopwatch")
        
        Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateElapsedTimeLabel), userInfo: nil, repeats: true)
        stopwatch.start()
      
    }
    @objc func updateElapsedTimeLabel(timer: Timer){
        print("updating..")
        if stopwatch.isRunning{
        elapsedTimeLabel.text="\(stopwatch.elapsedTime)"
        }else {
            timer.invalidate()
        }
    }
    
    @IBAction func stopButtonTapped(_ sender: UIButton) {
        print(stopwatch.elapsedTime)
        stopwatch.stop()
        
    }
}





