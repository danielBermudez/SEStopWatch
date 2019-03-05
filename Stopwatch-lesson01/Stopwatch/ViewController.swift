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
        stopwatch.start()
        while stopwatch.getIsRunning(){
            print("Updating")
            elapsedTimeLabel.text="\(stopwatch.elapsedTime)"
        }
    }
    
    @IBAction func stopButtonTapped(_ sender: UIButton) {
        print(stopwatch.elapsedTime)
        stopwatch.stop()
        
    }
}





