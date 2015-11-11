//
//  Flight2InterfaceController.swift
//  AirAber
//
//  Created by Larry Nickerson on 11/10/15.
//  Copyright © 2015 Mic Pringle. All rights reserved.
//

import WatchKit
import Foundation


class FlightInterfaceController: WKInterfaceController {

    @IBOutlet var flightLabel: WKInterfaceLabel!
    @IBOutlet var routeLabel: WKInterfaceLabel!
    @IBOutlet var boardingLabel: WKInterfaceLabel!
    @IBOutlet var boardTimeLabel: WKInterfaceLabel!
    @IBOutlet var statusLabel: WKInterfaceLabel!
    @IBOutlet var gateLabel: WKInterfaceLabel!
    @IBOutlet var seatLabel: WKInterfaceLabel!

    // add an optional property
    var flight: Flight? {
        // with a property observer that fires when flight property is set
        didSet {
            // if not nil then let's us the flight values to update the labels
            if let flight = flight {
                // 4
                flightLabel.setText("Flight \(flight.shortNumber)")
                routeLabel.setText(flight.route)
                boardingLabel.setText("\(flight.number) Boards")
                boardTimeLabel.setText(flight.boardsAt)
                // 5
                if flight.onSchedule {
                    statusLabel.setText("On Time")
                } else {
                    statusLabel.setText("Delayed")
                    statusLabel.setTextColor(UIColor.redColor())
                }
                gateLabel.setText("Gate \(flight.gate)")
                seatLabel.setText("Seat \(flight.seat)")
            }
        }
    }

    /**
     ** when the app awakes let's display the first flight
    **/
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        flight = Flight.allFlights().first!
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
