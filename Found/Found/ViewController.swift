//
//  ViewController.swift
//  Found
//
//  Created by Marat S. on 12/11/2016.
//  Copyright © 2016 m4rr. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {

  @IBOutlet weak var mapView: MKMapView!

  override func viewDidLoad() {
    super.viewDidLoad()

//    mapView.setUserTrackingMode(.follow, animated: true)
//    mapView.showsTraffic = true

    mapView.delegate = self
  }

  @IBAction func openMap(_ sender: Any) {

    if let url = URL(string: "https://maps.apple.com/?q=37.33,-122.03") {
      let app = UIApplication.shared

      app.open(url, options: [:], completionHandler: nil)
    }

  }

  func mapView(_ mapView: MKMapView, didUpdate userLocation: MKUserLocation) {
    let center = CLLocationCoordinate2D(
      latitude: userLocation.coordinate.latitude,
      longitude: userLocation.coordinate.longitude)

    let width = 10_000.0
    let height = 1000.0

    let region = MKCoordinateRegionMakeWithDistance(center, width, height)

    mapView.setRegion(region, animated: true)

  }

  @IBAction func dropPin(_ sender: Any) {
    // drop pin at current location

    let latitude = mapView.userLocation.coordinate.latitude
    let longitude = mapView.userLocation.coordinate.longitude


    let pin = Pin(
      c: mapView.userLocation.coordinate,
      title: "\(latitude) ... \(longitude)")

    mapView.addAnnotation(pin)

    let point = MKPointAnnotation()
    point.coordinate = mapView.userLocation.coordinate
    mapView.addAnnotation(point)
  }

}

















