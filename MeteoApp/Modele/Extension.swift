//
//  Extension.swift
//  MeteoApp
//
//  Created by Dea-loC on 05/04/2018.
//  Copyright © 2018 Dea-loC. All rights reserved.
//

import Foundation

extension Double {
    
    func convertirEnIntString() -> String {
        let int = Int(self)
        return String(int) + "°C"
    }
    
}
