//
//  ViewController.swift
//  EasyBrowser
//
//  Created by Marat S. on 12/11/2016.
//  Copyright © 2016 m4rr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var webView: UIWebView!

  override func viewDidLoad() {
    super.viewDidLoad()

    webView.delegate = self
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  @IBAction func openPageInSafari(_ sender: Any) {
    // open moscoding.ru

    // безопасное расркытие контейнера `NSURL?`
//    if let адресСайта = URL(string: "http://moscoding.ru") {
//      UIApplication.shared
//        .open(адресСайта, options: [:], completionHandler: nil)
//    }

//    let опасноРаскрытыйАдрес = NSURL(string: "https://moscoding.ru!@#$%^&*(")!
  }

  @IBAction func openPage(_ sender: Any) {
    // безопасное расркытие контейнера `NSURL?`
    if let адресСайта = URL(string: "https://yandex.ru") {
      let urlReq = URLRequest(url: адресСайта)

      webView.loadRequest(urlReq)
    }
  }

  @IBAction func backButtonDidTap(_ sender: Any) {
    // нажатие кнопки "назад"
    webView.goBack()
  }

}

extension ViewController: UIWebViewDelegate {

  func webViewDidStartLoad(_ webView: UIWebView) {
    // сменить фон экрана на зеленый
    self.view.backgroundColor = .green
  }

  func webViewDidFinishLoad(_ webView: UIWebView) {
    // сменить фон экрана на белый
    view.backgroundColor = .white
  }


}









