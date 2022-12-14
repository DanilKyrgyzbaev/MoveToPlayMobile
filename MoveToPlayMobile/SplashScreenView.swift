//
//  SplashScreenView.swift
//  MoveToPlayMobile
//
//  Created by Kyrgyzbaev Danil on 25.10.2022.
//

import SwiftUI

struct SplashScreenView: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    var body: some View {
        if(isActive){
            ContentView()
        } else {
            VStack{
                VStack{
                    Image(systemName: "globe")
                        .font(.system(size: 80))
                        .foregroundColor(.green)
                    Text("Word App")
                        .font(Font.custom("Baskerville-Bold",size:26))
                        .foregroundColor(.black.opacity(0.80))
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear{
                    withAnimation(.easeIn(duration: 1.2)){
                        self.size = 0.9
                        self.opacity = 1.0
                        
                    }
                }
            }
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                    withAnimation{
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
