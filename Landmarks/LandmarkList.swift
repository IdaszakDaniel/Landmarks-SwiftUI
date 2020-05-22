//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Daniel Idaszak on 21/05/2020.
//  Copyright © 2020 Daniel Idaszak. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    @State var showFavoritesOnly = false
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Show Favorites only")
                }
                ForEach(landmarkData) { landmark in
                    if !self.showFavoritesOnly || landmark.isFavorite {
                        NavigationLink(destination: ContentView(landmark: landmark)) {
                            LandmarkRow(landmark: landmark)
                        }
                    }
                }
            }
            .navigationBarTitle(Text("Landmarks"))
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE", "iPhone XS Max"], id: \.self) { deviceName in
            LandmarkList()
            .previewDevice(PreviewDevice(rawValue: deviceName))
            .previewDisplayName(deviceName)
        }
        
    }
}
