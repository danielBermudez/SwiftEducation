/*

This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
4.0 International License, by Yong Bakos.

*/

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var magenta: UIButton!
    @IBOutlet weak var black: UIButton!
    @IBOutlet weak var white: UIButton!
    @IBOutlet weak var Lesson2Label: UILabel!
    let customColor = UIColor(red: 0, green: 165/200, blue: 100, alpha: 1)
    
    @IBAction private func changeBackgroundToBlack(_ sender: Any) {
        if let button :UIButton = sender as? UIButton{
            var color = UIColor()
            if button == white{
                color = UIColor.white
            }else if button == black{
                    color = UIColor.black
            }else if button == magenta{
                color = UIColor.magenta}
            view.backgroundColor = color
            button.backgroundColor = color
        }
        
       

        
    }
 
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Lesson2Label.textColor = customColor
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

