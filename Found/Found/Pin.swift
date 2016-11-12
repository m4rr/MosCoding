//
//  Pin.swift
//  Found
//
//  Created by Marat S. on 12/11/2016.
//  Copyright © 2016 m4rr. All rights reserved.
//

import Foundation
import MapKit

class Pin: NSObject, MKAnnotation {

  var coordinate: CLLocationCoordinate2D

  init(c: CLLocationCoordinate2D, title: String) {
    self.coordinate = c
    self.title = title
  }

  var title: String?


}
