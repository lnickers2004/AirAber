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
        NSLog("There are \(flights.count) flights.")
        
        for flight in flights {
            NSLog("destination: \(flight.destination)")
        }
        
        // fill the flight table with data
        for index in 0..<flightsTable.numberOfRows {
        
            // if the current row has a valid controller
            if flightsTable.rowControllerAtIndex(index) == nil{
                print(" nil")
            }
            if let controller = flightsTable.rowControllerAtIndex(index) as? FlightRowController
            {
            
                //fill the row with flight details
                controller.flight = flights[index]
                print("yo!!!")
            }
        }
    }
 
    
// Tried this but to no avail...
// http://stackoverflow.com/questions/29147205/apple-watch-table-first-4-rows-not-appearing
//    override func willActivate() {
//        // create an instance of the row you just built in Interface Builder for each flight in
//        // flights. The number of rows is equal to the size of the array, and the row type
//        // is the identifier you set in the storyboard
//        flightsTable.setNumberOfRows(flights.count, withRowType: "FlightRow")
//        NSLog("There are \(flights.count) flights.")
//        
//        for flight in flights {
//            NSLog("destination: \(flight.destination)")
//        }
//        
//        // fill the flight table with data
//        for index in 0..<flightsTable.numberOfRows {
//            
//            // if the current row has a valid controller
//            if flightsTable.rowControllerAtIndex(index) == nil{
//                print(" nil")
//            }
//            if let controller = flightsTable.rowControllerAtIndex(index) as? FlightRowController
//            {
//                
//                //fill the row with flight details
//                controller.flight = flights[index]
//                print("yo!!!")
//            }
//        }
//    }
}
