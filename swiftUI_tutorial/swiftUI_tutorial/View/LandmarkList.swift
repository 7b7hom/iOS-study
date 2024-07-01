//
//  LandmarkList.swift
//  swiftUI_tutorial
//
//  Created by 김경서 on 7/1/24.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationSplitView {
            List(landmarks) { landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
                
            }
            .navigationTitle("Landmarks")
        } detail: {
            Text("Choose a landmark.")
        }
    }
}

#Preview {
    LandmarkList()
}
