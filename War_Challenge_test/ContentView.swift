//
//  ContentView.swift
//  War_Challenge_test
//
//  Created by KIR Q on 2022.02.24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var playerCard = "card9"
    @State private var cpuCard = "card3"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    
    
    var body: some View {
        
        ZStack {
            Image("background")
                .ignoresSafeArea(.all)
            
            
            VStack {
                
                Spacer()
                Image("logo")
                Spacer()
                
                HStack {
                    
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                    
                }
                
                Spacer()
                
                Button (action: {
                    
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    
                    if playerRand > cpuRand {
                        playerScore += 1
                    } else {
                        cpuScore += 1
                    }
                    
                    
                    if playerScore == 10 {
                        print("You are win")
                    } else if cpuScore == 10 {
                        print("CPU win")
                    } else if playerScore == cpuScore {
                        print("win win")
                    }
                    

                    
                }, label: {
                    Image("dealbutton")
                })
                
                

                
                Spacer()
                
                HStack {
                    
                    Spacer()
                    
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10)
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    
                    Spacer()
                    
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10)
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
