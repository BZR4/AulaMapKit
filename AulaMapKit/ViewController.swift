//
//  ViewController.swift
//  AulaMapKit
//
//  Created by user208051 on 12/3/21.
//

import UIKit
import MapKit

class ViewController: UIViewController, CLLocationManagerDelegate {
    
    
    @IBOutlet weak var outletMapKit: MKMapView!
    
    var locationManager = CLLocationManager()
    var userLocation = CLLocation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        outletMapKit.showsUserLocation = true
    }
    
     //Parametros deconfiguracao
    func setupLocationManager(){
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestAlwaysAuthorization()
        locationManager.startUpdatingLocation()
    }
    
     //Localizacao do Usuario
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if locations.count > 0 {
            if let location = locations.last{
                userLocation = location
                print("A localizacao di susuario eh LAT: \(userLocation.coordinate.latitude) - LON:\(userLocation.coordinate.longitude)")
            }
        }
    }
}

