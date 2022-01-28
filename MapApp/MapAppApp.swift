//
//  MapAppApp.swift
//  MapApp
//
//  Created by RUMEN GUIN on 28/01/22.
//

import SwiftUI

@main
struct MapAppApp: App {
    
    @StateObject private var vm = LocationsViewModel()
    
    var body: some Scene {
        WindowGroup {
            LocationsView()
                .environmentObject(vm) // anything in LocationsView or child of this(LocationsView) view will have reference to that environment in which this object will be in the environment and that is our LocationsViewModel.
        }
    }
}
