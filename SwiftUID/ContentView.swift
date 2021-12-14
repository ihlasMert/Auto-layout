//
//  ContentView.swift
//  SwiftUID
//
//  Created by ihlas on 14.12.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("diceeLogo")
                Spacer()
                
                HStack{
                DiceView(n: 1)
                DiceView(n: 1)
            }
                .padding(.horizontal)
                Spacer()
                
                Button(action: {
                    
                }) {
                    Text("Roll")
                        .font(.system(size:90))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                    
                    
                }
                .background(Color.yellow)

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
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


