//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Emerson Victor on 19/02/20.
//  Copyright © 2020 emer. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - State properties
    @State private var countries = Country.allCases.shuffled()
    @State private var correctAnswer = Country.allCases[Int.random(in: 0..<Country.count)]
    @State private var showingScore = false
    @State private var scoreTitle = ""
    @State private var score = 0
    
    // MARK: - Interface
    var body: some View {
        VStack(spacing: 32) {
            VStack(spacing: 4) {
                Text("tap the flag of")
                    .font(.title)
                Text(self.correctAnswer.stringValue)
                    .fontWeight(.black)
                    .font(.largeTitle)
            }
            
            VStack(spacing: 24) {
                ForEach(0..<3) { num in
                    Button(action: {
                        self.didTapFlag(of: self.countries[num])
                    }) {
                        FlagImage(imageNamed: self.countries[num].stringValue)
                    }
                    
                }
            }
        }
        .alert(isPresented: $showingScore) {
            Alert(title: Text(scoreTitle),
                  message: Text("Your score is \(self.score)"),
                  dismissButton: .default(Text("Continue")) {
                    self.didDismissScore()
                })
        }
    }
    
    // MARK: - Methods
    func didTapFlag(of country: Country) {
        if country == correctAnswer {
            self.score += 1
            self.scoreTitle = "Correct"
        } else {
            scoreTitle = "Wrong"
        }
        
        showingScore = true
    }
    
    func didDismissScore() {
        self.countries.shuffle()
        self.correctAnswer = self.countries[Int.random(in: 0..<2)]
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
