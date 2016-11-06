/*

This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
4.0 International License, by Yong Bakos.

*/

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

  @IBAction func changeBackgroundColor(_ sender: Any) {
    view.backgroundColor = UIColor.black

    
  }

  @IBAction func changeBackgroundColorToGreen(_ sender: Any) {
    view.backgroundColor = .green
  }

  @IBAction func changeBackgroundColorToOrange(_ sender: Any) {
    view.backgroundColor = .orange
  }

}














