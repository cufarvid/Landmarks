//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Vid Čufar on 18/09/2021.
//

import SwiftUI

struct LandmarkList: View {
    @State private var showFavouritesOnly = false
    
    var filteredLandmarks: [Landmark] {
        landmarks.filter { landmark in
            (!showFavouritesOnly || landmark.isFavourite)
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavouritesOnly) {
                    Text("Favourites only")
                }
                
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
