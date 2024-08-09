//
//  PredatorDetail.swift
//  ApexPredators
//
//  Created by joe on 8/9/24.
//

import SwiftUI

struct PredatorDetail: View {
    let predator: ApexPredator
    
    var body: some View {
        GeometryReader { geo in
            ScrollView {
                ZStack(alignment: .bottomTrailing) {
                    // background image
                    Image(predator.type.rawValue)
                        .resizable()
                        .scaledToFit()
                    
                    // dino image
                    Image(predator.image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: geo.size.width/1.5, height: geo.size.height/3)
                        .scaleEffect(x: -1) // flip
                        .shadow(color: .black, radius: 7) // stand out, 3D-look
                        .offset(y: 20)
                }
                
                // dino name
                
                // current location
                
                // appears in
                
                // movie moments
                
                // link to webpage
            }
            .ignoresSafeArea()
        }
    }
}

#Preview {
    PredatorDetail(predator: Predators().apexPredators[2])
//        .preferredColorScheme(.dark)
}
