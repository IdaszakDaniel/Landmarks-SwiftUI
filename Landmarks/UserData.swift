//
//  UserData.swift
//  Landmarks
//
//  Created by Daniel Idaszak on 22/05/2020.
//  Copyright © 2020 Daniel Idaszak. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: ObservableObject {
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
}
