//
//  ContentView.swift
//  WatchLandmarks WatchKit Extension
//
//  Created by Vid Čufar on 27/09/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
