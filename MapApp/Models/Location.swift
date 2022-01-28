//
//  Location.swift
//  MapApp
//
//  Created by RUMEN GUIN on 28/01/22.
//

import Foundation
import MapKit

//location data service -> any file that is either getting data from a data source like backend database, we will put that in dataservice file
/*
 Location(
     name: "Colosseum",
     cityName: "Rome",
     coordinates: CLLocationCoordinate2D(latitude: 41.8902, longitude: 12.4922),
     description: "The Colosseum is an oval amphitheatre in the centre of the city of Rome, Italy, just east of the Roman Forum. It is the largest ancient amphitheatre ever built, and is still the largest standing amphitheatre in the world today, despite its age.",
     imageNames: [
         "rome-colosseum-1",
         "rome-colosseum-2",
         "rome-colosseum-3",
     ],
     link: "https://en.wikipedia.org/wiki/Colosseum")
 */

struct Location: Identifiable, Equatable {

    let name: String
    let cityName: String
    let coordinates: CLLocationCoordinate2D
    let description: String
    let imageNames: [String]
    let link: String
    
    //identifiable
    var id: String {
        //name = "Colosseum"
        //cityName = "Rome"
        //id = "ColosseumRome"
        name + cityName //to make the id completely different
    }
    
    //equatable
    static func == (lhs: Location, rhs: Location) -> Bool {
        lhs.id == rhs.id 
    }
}
