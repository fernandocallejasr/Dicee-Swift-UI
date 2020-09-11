//
//  ContentView.swift
//  Dicee-Swift-UI
//
//  Created by user177767 on 8/13/20.
//  Copyright © 2020 Fernando Callejas. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var leftDiceView = 3
    @State var rightdiceView = 6
    
    var body: some View {
        
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceView(n: leftDiceView)
                    DiceView(n: rightdiceView)
                }
                .padding(.horizontal)
                Spacer()
                Button(action: {
                    self.leftDiceView = Int.random(in: 1...6)
                    self.rightdiceView = Int.random(in: 1...6)
                }) {
                    Text("Roll")
                        .font(.system(size: 40))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                }
                .background(Color.red)
                .cornerRadius(25)
            }
        }
        
    }
}


struct DiceView: View {
    
    let n: Int
    
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice(PreviewDevice(rawValue: "iPhone Xs"))
    }
}


