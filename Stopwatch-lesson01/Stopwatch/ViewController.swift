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
        
        Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(updateElapsedTimeLabel), userInfo: nil, repeats: true)
        stopwatch.start()
      
    }
    @objc func updateElapsedTimeLabel(timer: Timer){
        print("updating..")
        if stopwatch.isRunning{
            let minutes = Int(stopwatch.elapsedTime / 60)
            let seconds = Int (stopwatch.elapsedTime.truncatingRemainder(dividingBy: 60) )
            let thenthsOfSecond = Int(stopwatch.elapsedTime * 10.truncatingRemainder(dividingBy: 10))
            
            elapsedTimeLabel.text=String(format: "%02d:%02d.%d ", minutes,seconds,thenthsOfSecond)
        }else {
            timer.invalidate()
        }
    }
    
    @IBAction func stopButtonTapped(_ sender: UIButton) {
        print(stopwatch.elapsedTime)
        stopwatch.stop()
        
    }
}





