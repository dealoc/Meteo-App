//
//  MeteoController.swift
//  MeteoApp
//
//  Created by Dea-loC on 05/04/2018.
//  Copyright © 2018 Dea-loC. All rights reserved.
//

import UIKit
import MapKit

class MeteoController: UIViewController {

    var locationManager: CLLocationManager?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        miseEnPlaceCLLocation()
    }

    func obtenirPrevisionsMeteo(latitude: Double, longitude: Double) {
        let urlDeBase = "http://api.openweathermap.org/data/2.5/forecast?"
        let latitude = "lat=" + String(latitude)
        let longitude = "&lon=" + String(longitude)
        let uniteEtLangue = "&units=metric&lang=fr"
        let cleApi = "&APPID=" + API
        let urlString = urlDeBase + latitude + longitude + uniteEtLangue + cleApi
        print(urlString)
    }

}
