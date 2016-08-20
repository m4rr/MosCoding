//
//  ViewController.swift
//  Converter
//
//  Created by Marat S. on 20/08/2016.
//  Copyright © 2016 m4rr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var pickerView: UIPickerView!
  @IBOutlet weak var label: UILabel!
  @IBOutlet weak var dateLabel: UILabel!

  var tCelsius: [TempUnit] = []

  let calc = Calculator()

  @IBAction func buttonTap(sender: AnyObject) {
    UIView.animateWithDuration(2) { 
      self.pickerView.alpha = 0
    }
  }

  override func viewDidLoad() {
    super.viewDidLoad()

    let lowerBound = -100
    let upperBound =  100

    //let range = lowerBound...upperBound
    let range = lowerBound.stride(to: upperBound, by: 5)

    for index in range {

//      TempUnit(temp: Double(100500))

      let unit = TempUnit(temp: Double(index))

      tCelsius.append(unit)
    }

    pickerView.dataSource = self
    pickerView.delegate = self

    let defaults = NSUserDefaults.standardUserDefaults()

    let retrievedValue = defaults.integerForKey("selectedRow")

    pickerView.selectRow(retrievedValue, inComponent: 0, animated: true)

    label.text = defaults.objectForKey("textValue") as? String

  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

}

extension ViewController: UIPickerViewDataSource {

  func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
    return 1
  }

  func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
    return tCelsius.count
  }

}

extension ViewController: UIPickerViewDelegate {

  func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
    let temp = tCelsius[row]

//  let rounded = calc.prettyRound(temp)
    let rounded = temp.prettyRound()

    return rounded + " °C"
  }

  func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {

    /// получаем объект `TempUnit` из списка `tCelsius` по номеру `row`
    let unitCelsius = tCelsius[row]

    /// получаем значение температуры из объекта типа `TempUnit`
    let degree = unitCelsius.temp

    /// конвертируем значение температуы °C → °F
    let degreeInF = calc.convert(celsius: degree)

    /// создаем объект `TempUnit` со сконвертированным значением температуры
    let unitFahr = TempUnit(temp: degreeInF)

    /// получаем от объекта `TempUnit` отформатированную строку
    let textValue = unitFahr.prettyRound()

    /// ставим отформатированную строку в `label.text`
    label.text = textValue + " °F"

    let defaults = NSUserDefaults.standardUserDefaults()

    defaults.setInteger(row, forKey: "selectedRow")
    defaults.setObject(textValue, forKey: "textValue")

    let dateNow = NSDate()
    dateLabel.text = "\(dateNow)"
  }

}


















