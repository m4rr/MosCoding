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

//    let refreshControl = UIRefreshControl()
//    refreshControl.addTarget(self, action: #selector(handleRefresh), for: UIControlEvents.valueChanged)
//    tableView.refreshControl = refreshControl
  }

  func handleRefresh(sender: UIRefreshControl) {
    DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(2_000)) {
      sender.endRefreshing()
      self.tableView.reloadData()
    }
  }

}

extension ListViewController: UITableViewDataSource {

  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
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
