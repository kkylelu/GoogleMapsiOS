//
//  ViewController.swift
//  searchfood
//
//  Created by 呂建鎧 on 2023/8/18.
//

import UIKit
import GoogleMaps


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
  
        let camera = GMSCameraPosition.camera(withLatitude: 25.0330, longitude: 121.5654, zoom: 12.0) // 台北的經緯度
          mapView.camera = camera
          mapView.isMyLocationEnabled = true
        
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        view = mapView
        
        GMSServices.provideAPIKey("AIzaSyAyhTgh1g9oS5UwjHDVJV3rBI-ZTRZGvZo")
        
    }

    @IBOutlet weak var mapView: GMSMapView!
    
    
}

