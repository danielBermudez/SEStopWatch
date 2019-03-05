/*

This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
4.0 International License, by Yong Bakos.

*/

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setLabel()
        setStart()
        setStop()
     
    }
    func setStart(){
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 50))
        button.center = CGPoint(x: view.center.x - (view.center.x * 0.3), y: 600)
        button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        button.setTitleColor(UIColor.blue, for: .normal)
        button.setTitle("Start", for: .normal)
        self.view.addSubview(button)
    }
        func setStop(){
            let button = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 50))
            button.center = CGPoint(x: (view.center.x + (view.center.x * 0.3)), y: 600)
            button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            button.setTitleColor(UIColor.blue, for: .normal)
            button.setTitle("Stop", for: .normal)
            self.view.addSubview(button)
        }
    func setLabel(){
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 250, height: 41))
        label.center = CGPoint(x: view.center.x, y: 250)
        label.textAlignment = NSTextAlignment.center
        label.text = "0:00.0"
        label.font = UIFont(name: label.font.fontName, size: 40)
        self.view.addSubview(label)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}





