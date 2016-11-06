//
//  DetailViewController.swift
//  ProductName
//
//  Created by Marat S. on 14/08/2016.
//  Copyright © 2016 m4rr. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

  var city: (cityName: String, temp: Int, pressure: Int)?

  @IBOutlet weak var imageView: UIImageView!

  @IBOutlet weak var nameLabel: UILabel!

  @IBOutlet weak var pressureLabel: UILabel!

  @IBAction func buttonDidTap(sender: AnyObject) {
    if city?.temp < 10 {
      view.backgroundColor = UIColor.blueColor()
    } else {
      view.backgroundColor = UIColor.yellowColor()
    }
  }

  override func viewDidLoad() {
    super.viewDidLoad()

    nameLabel.text = city?.cityName

    if let pressure = city?.pressure {
      pressureLabel.text = "\(pressure)"
    }

    if let URL = NSURL(string: "https://raw.githubusercontent.com/m4rr/MosCoding/master/images/\(city?.cityName ?? "mickey").jpg") {

      if let downloadedData = NSData(contentsOfURL: URL) {

        imageView.image = UIImage(data: downloadedData)
      }
    }



    
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


  /*
   // MARK: - Navigation

   // In a storyboard-based application, you will often want to do a little preparation before navigation
   override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
   // Get the new view controller using segue.destinationViewController.
   // Pass the selected object to the new view controller.
   }
   */

}
