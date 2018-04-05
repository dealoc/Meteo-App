//
//  LocalisationExtension.swift
//  MeteoApp
//
//  Created by Dea-loC on 05/04/2018.
//  Copyright © 2018 Dea-loC. All rights reserved.
//

import UIKit
import MapKit

extension MeteoController: CLLocationManagerDelegate {
    
    func miseEnPlaceCLLocation() {
        locationManager = CLLocationManager()
        locationManager?.delegate = self
        locationManager?.requestAlwaysAuthorization()
        locationManager?.startUpdatingLocation()
        
    }
    
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard locations.count > 0 else { return }
        locationManager?.stopUpdatingLocation()
        let positionActuelle = locations[0]
        let latitude = positionActuelle.coordinate.latitude
        let longitude = positionActuelle.coordinate.longitude
        obtenirPrevisionsMeteo(latitude: latitude, longitude: longitude)
        
    }
    
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error.localizedDescription)
    }
    
    
    
}
