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
        
        
        Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(updateElapsedTimeLabel), userInfo: nil, repeats: true)
        stopwatch.start()
      
    }
    @objc func updateElapsedTimeLabel(timer: Timer){
       
        if stopwatch.isRunning{
            
            elapsedTimeLabel.text=stopwatch.elapsedTimeasString
        }else {
            timer.invalidate()
        }
    }
    
    @IBAction func stopButtonTapped(_ sender: UIButton) {
        
        stopwatch.stop()
        
    }
}





