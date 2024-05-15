//
//  SplashScreenView.swift
//  Budget Voyage
//
//  Created by Asif on 5/15/24.
//
import SwiftUI

struct SplashScreenView: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5

    var body: some View {
        if isActive {
            ContentView()
        } else {
            
            ZStack {
                Color.white
                    .ignoresSafeArea()
                VStack {
                    Image("Splash.png")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 400, height: 400)
                    
                       // .font(Font.custom("Baskerville-Bold", size: 26))
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear {
                    withAnimation(.easeInOut(duration: 1.2)) {
                        self.size = 0.9
                        self.opacity = 1.0
                    }
                }
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                        self.isActive = true
                    }
            }
            }
        }
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}

