//
//  GarduinoData.swift
//  GarduinoApp
//
//  Created by Andrew Clark on 12/22/16.
//  Copyright © 2016 Andrew Clark. All rights reserved.
//

import UIKit

class GarduinoData {
    
    /* 
     {
     "next" : "http:\/\/pigeon.datsclark.com:8008\/rest\/datarow\/?page=2",
     "previous" : null,
     "results" : [
     {
     "entry_date" : "2016-12-22T17:45:44.924599Z",
     "lumins" : 379,
     "id" : 73483,
     "air_humidity" : 44.7,
     "soil_temp" : 63.28,
     "air_temp" : 61.88,
     "soil_vwc" : 79.73999999999999
     }, ...
     ],
      "count" : 73319
     }
    */
    //MARK: Properties
    
    var id: Int
    var entryDate: Date?
    var airTemp: Float?
    var airHumidity: Float?
    var lumins: Float?
    var soilVWC: Float?
    var soilTemp: Float?
    
    init?(id: Int) {
        // Initialize stored properties.
        self.id = id
    }
    
    
    init?(id:Int, entryDate: Date?, airTemp: Float?, airHumidity: Float?, lumins: Float?, soilVWC: Float?, soilTemp: Float?) {
        self.id = id
        self.entryDate = entryDate
        self.airTemp = airTemp
        self.airHumidity = airHumidity
        self.lumins = lumins
        self.soilVWC = soilVWC
        self.soilTemp = soilTemp
    }
    
}
