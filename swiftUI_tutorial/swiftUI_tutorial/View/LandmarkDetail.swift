//
//  LandmarkDetail.swift
//  swiftUI_tutorial
//
//  Created by 김경서 on 7/1/24.
//

import SwiftUI

struct LandmarkDetail: View {
    
    var landmark: Landmark
    
    var body: some View {
        VStack {
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300)
            
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack (alignment: .leading){
                Text(landmark.name)
                        .font(.title)
                        .foregroundColor(.green)
                HStack {
                    Text("\(landmark.park)")
                    Spacer()
                    Text("\(landmark.state)")
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                
                Divider()
                
                Text("About \(landmark.name)")
                    .font(.title)
                Text("\(landmark.description)")
                    .font(.subheadline)
            }
            .padding()
            
            Spacer()    // 빈 공간을 모두 채워준다. 따라서 컴포넌트들이 맨 위로 이동해서 맨 위부터 공간을 모두 채워주게 된다!
        }
    }
}

#Preview {
    LandmarkDetail(landmark: landmarks[0])
}
