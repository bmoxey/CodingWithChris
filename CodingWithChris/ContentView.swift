//
//  ContentView.swift
//  CodingWithChris
//
//  Created by Brett Moxey on 4/8/2023.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        ZStack {
            ContainerRelativeShape()
                .fill(Color.green.gradient)
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
                    Image("card3")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 120)
                    Spacer()
                    Image("card4")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 120)
                    Spacer()
                }
                Spacer()
                Image("deal")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150)
                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(/*@START_MENU_TOKEN@*/.bottom, 10.0/*@END_MENU_TOKEN@*/)
                        Text("0")
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(/*@START_MENU_TOKEN@*/.bottom, 10.0/*@END_MENU_TOKEN@*/)
                        Text("0")
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
