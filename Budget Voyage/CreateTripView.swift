//
//  CreateTripView.swift
//  Budget Voyage
//
//  Created by Asif on 5/15/24.
//

import SwiftUI

struct CreateTripView: View {
    var body: some View {
        
        VStack {
            Image("Background")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 400)
                .padding(.top, 20)
            
            Button(action: {
                
            }) {
                Text("Create a Trip")
                    .font(Font.custom("Baskerville-Bold", size: 26))
                    .foregroundColor(.black)
                
            }
            .padding()
            .background(Color.green)
            .cornerRadius(10)
            .frame(width: 200, height: 200)
            .padding()
        
        }
    }
}

#Preview {
    CreateTripView()
}
