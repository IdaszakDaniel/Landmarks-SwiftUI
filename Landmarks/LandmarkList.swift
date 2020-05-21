//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Daniel Idaszak on 21/05/2020.
//  Copyright © 2020 Daniel Idaszak. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        List(landmarkData) { landmark in
            LandmarkRow(landmark: landmark)
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
