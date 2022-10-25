//
//  ContentView.swift
//  MoveToPlayMobile
//
//  Created by Kyrgyzbaev Danil on 24.10.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var counterValue = 0
    var body: some View {
        VStack {
            Text("\(counterValue)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .frame(width: 80,height: 80)
                .background(
                    Circle()
                        .foregroundColor(.gray)
            )
            Spacer()
                .frame(height: 40)
            HStack {
                Button {
                    //Add counterValue
                    clearValue()
                } label: {
                    ActionButtonView(buttonTitle: "AC", buttonColor: .red)
            }
                Button {
                    //Add counterValue
                    incrementValue()
                } label: {
                    ActionButtonView(buttonTitle: "+1", buttonColor: .blue)
                }
            }

        }

    }
    fileprivate func incrementValue(){
        counterValue += 1
    }
    
    fileprivate func clearValue(){
        counterValue = 0
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ActionButtonView: View {
    let buttonTitle: String
    let buttonColor: Color
    var body: some View {
        Text(buttonTitle)
            .font(.headline)
            .foregroundColor(.white)
            .frame(width: 80,height: 40)
            .background(
                Capsule()
                    .foregroundColor(buttonColor)
            )
    }
}
