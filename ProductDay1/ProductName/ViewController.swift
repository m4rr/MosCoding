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

  var cities: [(cityName: String, temp: Int, pressure: Int)] = [

    ("Moscow", 20, 751),
    ("London", 30, 752),
    ("Berlin", 0, 752),
    ("Rio", 50, 750),

  ]

  let citiesDic = [
    "cityName": "Rio",
    "temp": 50,
    "pressure": 750,
  ]

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.

    tableView.dataSource = self
  }

  @IBAction func userDidTapAdd(sender: AnyObject) {
    let alert = UIAlertController(title: "New City", message: "Enter name", preferredStyle: .Alert)



    alert.addTextFieldWithConfigurationHandler { (textField) in }


    let okAction = UIAlertAction(title: "Ok", style: .Default, handler: { (action: UIAlertAction) in
      let cityName = alert.textFields?.first?.text

      self.cities.append((cityName!, 20, 753))
      self.tableView.reloadData()
    })

    let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel, handler: nil)


    alert.addAction(okAction)
    alert.addAction(cancelAction)

    presentViewController(alert, animated: true, completion: nil)
  }


  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {

    // Получаем значение destination из segue
    if let detailVC = segue.destinationViewController as? DetailViewController {

      // Получаем indexPath выделенной ячейки
      if let selectedIndexPath = tableView.indexPathForSelectedRow {

        // Получаем из коллекции cities информацию относящуюся к выделенной ячейке
        let city = cities[selectedIndexPath.row]

        detailVC.city = city
      }
    }


  }

}

extension ViewController: UITableViewDataSource {

  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return cities.count
  }

  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

    let myCell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)

    let city = cities[indexPath.row]

    let cityName = city.cityName

    if cityName == "" {
      myCell.textLabel?.text = "no city name"
      myCell.backgroundColor = nil
      myCell.imageView?.image = nil
    } else {
      myCell.textLabel?.text = "\(cityName), давление: \(city.pressure)"

      // String(format: "%@, давление: %d", cityName, city.pressure)
    }

    myCell.detailTextLabel?.text = String(city.temp) + "°"

    return myCell
  }

}
