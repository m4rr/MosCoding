//
//  ViewController.swift
//  ProductName
//
//  Created by Marat S. on 13/08/2016.
//  Copyright © 2016 m4rr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var tableView: UITableView!

  var cities = [

    ("Moscow", 20),
    ("Berlin", 25),
    ("San Francisco", 30),
    ("Rio", 40),

  ]

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.

    tableView.dataSource = self
  }

  @IBAction func userDidTapAdd(sender: AnyObject) {
    let alert = UIAlertController(title: "New City", message: "Enter name", preferredStyle: .Alert)



    alert.addTextFieldWithConfigurationHandler { (textField) in }

    alert.addAction(UIAlertAction(title: "OK", style: .Default, handler: { (action: UIAlertAction) in
      let cityName = alert.textFields?.first?.text

      self.cities.append((cityName!, 20))
      self.tableView.reloadData()
    }))
    
    presentViewController(alert, animated: true, completion: nil)
  }

}

extension ViewController: UITableViewDataSource {

  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return cities.count
  }

  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

    let myCell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)

    let city = cities[indexPath.row]

    myCell.textLabel?.text = city.0
    myCell.detailTextLabel?.text = String(city.1) + "°"

    return myCell
  }

}



