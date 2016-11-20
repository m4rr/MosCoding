//
//  ListViewController.swift
//  Flashcards
//
//  Created by Marat S. on 20/11/2016.
//  Copyright © 2016 m4rr. All rights reserved.
//

import UIKit

class ListViewController: UIViewController {

  var deck: Deck?

  @IBOutlet weak var tableView: UITableView! {
    didSet {
      tableView.dataSource = self
      tableView.delegate = self
    }
  }

  override func viewDidLoad() {
    super.viewDidLoad()

    let rc = UIRefreshControl()

    rc.addTarget(self,
                 action: #selector(handleRefresh),
                 for: UIControlEvents.valueChanged)

    tableView.refreshControl = rc
  }

  func handleRefresh(sender: UIRefreshControl) {

    DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(2)) {
      sender.endRefreshing()
      self.tableView.reloadData()
    }

  }

}

extension ListViewController: UITableViewDataSource {

  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

    // полная запись
//    if let d = deck {
//      return d.numberOfCards
//    } else {
//      return 0
//    }

    // сокращенная запись
    return deck?.numberOfCards ?? 0
  }

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

    let card = deck?.card(number: indexPath.row)

    cell.textLabel?.text = card?.term

    return cell
  }

  func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
    return "Terms List"
  }

}

extension ListViewController: UITableViewDelegate {

}
