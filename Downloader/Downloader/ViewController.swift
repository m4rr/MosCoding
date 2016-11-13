//
//  ViewController.swift
//  Downloader
//
//  Created by Marat S. on 13/11/2016.
//  Copyright © 2016 m4rr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var tableView: UITableView!

  var charsList: [Character] = [] {
    didSet {
      tableView.reloadData()
    }
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()


    tableView.dataSource = self
    tableView.delegate = self

    tableView.estimatedRowHeight = 100
    tableView.rowHeight = UITableViewAutomaticDimension

    download()
    print("after download function")
  }

  func download() -> Void {
    if let url = URL(string: "https://raw.githubusercontent.com/m4rr/MosCoding/master/(Summer)/data/file.json") {

      let urlRequest = URLRequest(url: url)

      URLSession.shared.dataTask(
        with: urlRequest,
        completionHandler: { (data: Data?, response: URLResponse?, error: Error?) in

          guard error == nil else {
            return // выход т.к. есть ошибка
          }

          guard let _ = response else {
            //print(unwrappedResponse)
            return // выход т.к. нет ответа
          }

          guard let data = data else {
            return // выход т.к. нет данныхы
          }

          guard let json = try? JSONSerialization
            .jsonObject(with: data, options: .allowFragments) else {
              return // выход т.к. не получилось десериализовать json
          }

          if let array = json as? [ [String: Any] ] {

            //array.forEach { (dictionary) in
              //print(dictionary)
            //}

           let chars = array.map { (dic: [String : Any]) -> Character in

              if let age  = dic["age"]   as? Int,
                 let name = dic["name"]  as? String,
                 let bio  = dic["bio"]   as? String,
                 let url  = dic["photo"] as? String {

                return Character(age: age, name: name, bio: bio, photo: URL(string: url))
              } else {
                return Character(age: 0, name: "", bio: "", photo: nil)
              }
            }


            DispatchQueue.main.async {
              self.charsList = chars
            }



            chars.forEach({ (char) in
              print(char.name)
            })

          }





      }).resume()
    }
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

