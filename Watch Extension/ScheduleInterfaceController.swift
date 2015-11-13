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
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // create an instance of the row you just built in Interface Builder for each flight in
        // flights. The number of rows is equal to the size of the array, and the row type
        // is the identifier you set in the storyboard
        flightsTable.setNumberOfRows(flights.count, withRowType: "FlightRow")
    }
}
