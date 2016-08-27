//
//  ViewController.swift
//  Day5
//
//  Created by Marat S. on 27/08/2016.
//  Copyright © 2016 m4rr. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

//  var simpleObject: Downloadable?

  var index = 0 {

    willSet {
//      oldvalu ← error
//      newValue
    }

    didSet(oldValue) {
      print("index did set from: \(oldValue) → to: \(index)")
      downloadViaWrapper()


      tableView.reloadData()
    }
  }

  var tableView = UITableView()


  override func viewDidLoad() {
    super.viewDidLoad()


    // http://api.fixer.io/latest
  }


  override func viewDidAppear(animated: Bool) {
    super.viewDidAppear(animated)

    print(NSDate())

    index = index + 1
    index = index + 1
    index += 1
    index += 1
    index += 1

  }

  func downloadViaWrapper() {

    let urlStr = "https://raw.githubusercontent.com/m4rr/MosCoding/master/data/file.json"

    Alamofire
//      .upload
      .request(.GET, urlStr)

      .responseJSON { (response: Response<AnyObject, NSError>) in


        response.response

        if let JSON = response.result.value as? [[String: AnyObject]] {
          //print("JSON: \(JSON)")


          print(self.index, "-", NSDate())


          if let firstObject = JSON.first {
            for (key, value) in firstObject {
              //print(key, ": ", value)
            }
          }

        }
    }


  }

  func downloadViaTask() {

//    downloader = Downloader()
//
//    downloader = Uploader()
//
//
//    downloader?.obtainData()
//    downloader?.decodeData()

    let urlStr = "https://raw.githubusercontent.com/m4rr/MosCoding/master/data/file.json"

    if let url = NSURL(string: urlStr) {

      let session = NSURLSession.sharedSession()

//      session.uploadTaskWithRequest(<#T##request: NSURLRequest##NSURLRequest#>, fromFile: <#T##NSURL#>)

      let task = session.dataTaskWithURL(url, completionHandler: { (data: NSData?, response: NSURLResponse?, error: NSError?) in

//        print(data)

        if let data = data {

          let json = String(data: data, encoding: NSUTF8StringEncoding)

          let jsonObject = try? NSJSONSerialization.JSONObjectWithData(data, options: [])

//          do {
//            let jsonObject2 = try NSJSONSerialization.JSONObjectWithData(data, options: [])
//          } catch {
//            print(error)
//          }

//          AnyObject

//          print(jsonObject)

          if let array = jsonObject as? [[String: AnyObject]] {
            print(array.count)

//            guard let firstObject = array.first else {
//              return
//            }

            if let firstObject = array.first {
              for (key, value) in firstObject {
                print(key, value)


//                if value == "table" {
//                  return key
//                }

              }

//              [""].filter(<#T##includeElement: (String) throws -> Bool##(String) throws -> Bool#>)


            } else {
              return
            }



          }

        }

//        print(response)

      })

//      task.resume()


    }


//    let x = 1 & 1
//    let y = 1 | 2

    for n in 1...100 {
      let result = (n & (n - 1)) != 0

      if result == false {

        print(n)

      }


    }


  }

}

