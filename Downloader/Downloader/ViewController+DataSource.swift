//
//  ViewController+DataSource.swift
//  Downloader
//
//  Created by Marat S. on 13/11/2016.
//  Copyright © 2016 m4rr. All rights reserved.
//

import UIKit

extension ViewController: UITableViewDataSource {

  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

    return charsList.count
  }

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

    let cell = tableView.dequeueReusableCell(withIdentifier: "reuse-id-custom") as! CharacterCell

    let char = charsList[indexPath.row]

//    switch char {
//    case is Character:
//      let cellC = tableView.dequeueReusableCell(withIdentifier: "reuse-id-custom") as! CharacterCell
//    default:
//      let cellD = tableView.dequeueReusableCell(withIdentifier: "reuse-id-custom") as! CharacterCell
//    }

    cell.headingLabel?.text = "\(char.name): \(char.age)"
    cell.bioLabel?.text = char.bio



//    if let url = char.photo, let data = try? Data(contentsOf: url) {
//    cell?.imageView?.image = UIImage(data: data)
//    }

    return cell
  }

}

extension ViewController: UITableViewDelegate {

}
