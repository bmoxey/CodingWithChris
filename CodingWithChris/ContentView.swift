//
//  ContentView.swift
//  CodingWithChris
//
//  Created by Brett Moxey on 4/8/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card5"
    @State var cpuCard = "card9"
    @State var playerScore = 0
    @State var cpuScore = 0
    
    @State var bgColor = Color(hue: GetTime(), saturation: 1, brightness: 0.75)
    var body: some View {
        ZStack {
            ContainerRelativeShape()
                .fill(bgColor.gradient)
//                .fill(Color.purple.gradient)
                .ignoresSafeArea()
            VStack {
                Image("war")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.top, 50.0)
                    .frame(width: 150)
                Spacer()
                HStack {
                    Spacer()
                    Image(playerCard)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 120)
                    Spacer()
                    Image(cpuCard)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 120)
                    Spacer()
                }
                Spacer()
                Button {
                    bgColor = Color(hue: GetTime(), saturation: 1, brightness: 0.75)
                    // Generate a random number between 2 and 14
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    // Update the cards
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    // Update the scores
                    if playerRand > cpuRand {
                        playerScore += 1
                    }
                    if playerRand < cpuRand {
                        cpuScore += 1
                    }
                    if playerRand == cpuRand {
                        playerScore += 1
                        cpuScore += 1
                    }
                } label: {
                    Image("deal")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150)
                }


                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(/*@START_MENU_TOKEN@*/.bottom, 10.0/*@END_MENU_TOKEN@*/)
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(/*@START_MENU_TOKEN@*/.bottom, 10.0/*@END_MENU_TOKEN@*/)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                }
                Spacer()
            }
        }

        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
