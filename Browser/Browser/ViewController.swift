//
//  ViewController.swift
//  Browser
//
//  Created by Marat S. on 21/08/2016.
//  Copyright © 2016 m4rr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var webView: UIWebView!
  @IBOutlet weak var textField: UITextField!

  @IBOutlet weak var backButton: UIButton!
  @IBOutlet weak var forwardButton: UIButton!

  @IBAction func buttonTap(sender: UIButton) {

    if let text = textField.text, link = NSURL(string: text) {
      let request = NSURLRequest(URL: link)

      webView.loadRequest(request)
    }

  }

  @IBAction func backButtonTap(sender: UIButton) {

    webView.goBack()

  }

  @IBAction func forwardButtonTap(sender: UIButton) {

    webView.goForward()

  }

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

extension ViewController: UIWebViewDelegate {

  func webViewDidFinishLoad(webView: UIWebView) {
    backButton.enabled = webView.canGoBack
    forwardButton.enabled = webView.canGoForward

    webView
  }

}

