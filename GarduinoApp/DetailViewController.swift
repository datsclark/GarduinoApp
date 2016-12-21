//
//  DetailViewController.swift
//  GarduinoApp
//
//  Created by Andrew Clark on 10/27/16.
//  Copyright © 2016 Andrew Clark. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var dateTimeLabel: UILabel!
    @IBOutlet weak var airTempLabel: UILabel!
    @IBOutlet weak var airHumidityLabel: UILabel!
    @IBOutlet weak var luminsLabel: UILabel!
    @IBOutlet weak var soilVWCLabel: UILabel!
    @IBOutlet weak var soilTempLabel: UILabel!
    
    func configureView() {
        // Update the user interface for the detail item.
        if let detail = self.detailItem {
            if let label = self.dateTimeLabel {
                label.text = detail.timestamp!.description
            }
            if let label = self.airTempLabel {
                label.text = detail.air_temp.description
            }
            if let label = self.airHumidityLabel {
                label.text = detail.air_humidity.description
            }
            if let label = self.soilTempLabel {
                label.text = detail.soil_temp.description
            }
            if let label = self.soilVWCLabel {
                label.text = detail.soil_vwc.description
            }
            if let label = self.luminsLabel {
                label.text = detail.lumins.description
            }
            
            
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var detailItem: Event? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }


}

