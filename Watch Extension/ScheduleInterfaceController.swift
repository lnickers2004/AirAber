//
//  ScheduleInterfaceController.swift
//  AirAber
//
//  Created by Larry Nickerson on 11/12/15.
//  Copyright © 2015 Mic Pringle. All rights reserved.
//

import WatchKit
import Foundation


class ScheduleInterfaceController: WKInterfaceController {

    @IBOutlet var flightsTable: WKInterfaceTable!

    
    // initialize the flights property
    // with data from the Flight Service
    var flights = Flight.allFlights()
    
    
}
