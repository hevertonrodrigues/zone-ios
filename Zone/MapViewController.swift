//
//  MapViewController.swift
//  Feed Me
//
//  Created by Ron Kliffer on 8/30/14.
//  Copyright (c) 2014 Ron Kliffer. All rights reserved.
//

import UIKit

class MapViewController: UIViewController//, TypesTableViewControllerDelegate
{
  @IBOutlet weak var mapCenterPinImage: UIImageView!
  @IBOutlet weak var pinImageVerticalConstraint: NSLayoutConstraint!
  var searchedTypes = ["bakery", "bar", "cafe", "grocery_or_supermarket", "restaurant"]
  
  override func viewDidLoad()
  {
    super.viewDidLoad()
    
    var camera = GMSCameraPosition.cameraWithLatitude( Preferences.sharedInstance.getDeviceLocation().latitude,
        longitude:Preferences.sharedInstance.getDeviceLocation().longitude, zoom:15)
    var mapView = GMSMapView.mapWithFrame(CGRectZero, camera:camera)
    mapView.mapType = kGMSTypeNormal
    
    var marker = GMSMarker()
    marker.position = camera.target
    marker.snippet = "Hello World"
    marker.appearAnimation = kGMSMarkerAnimationPop
    marker.map = mapView
    marker.icon = UIImage(named: "icon_me")

    
    self.view = mapView

  }
    
}

