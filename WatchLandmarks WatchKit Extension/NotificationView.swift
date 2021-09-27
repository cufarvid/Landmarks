//
//  NotificationView.swift
//  WatchLandmarks WatchKit Extension
//
//  Created by Vid Čufar on 27/09/2021.
//

import SwiftUI

struct NotificationView: View {
    var title: String?
    var message: String?
    var landmark: Landmark?
    
    var body: some View {
        VStack {
            if landmark != nil {
                CircleImage(image: landmark!.image.resizable())
                    .scaledToFit()
            }
            
            Text(title ?? "Unknown Landmark")
                .font(.headline)
            
            Divider()
            
            Text(message ?? "You are within 5 kilometers of one of your favourite landmarks.")
        }
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        let landmark = ModelData().landmarks[0]
        Group {
            NotificationView()
            NotificationView(
                title: landmark.name,
                message: "You are within 5 kilometers of \(landmark.name).",
                landmark: landmark)
        }
    }
}
