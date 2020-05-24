//
//  ProfileHost.swift
//  Landmarks
//
//  Created by Daniel Idaszak on 24/05/2020.
//  Copyright © 2020 Daniel Idaszak. All rights reserved.
//

import SwiftUI

struct ProfileHost: View {
    @State var draftProfile = Profile.default
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            ProfileSummary(profile: draftProfile)
        }
        .padding()
    }
}

struct ProfileHost_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHost()
    }
}
