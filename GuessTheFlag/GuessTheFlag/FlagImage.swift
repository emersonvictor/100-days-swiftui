//
//  FlagImage.swift
//  GuessTheFlag
//
//  Created by Emerson Victor on 27/02/20.
//  Copyright © 2020 emer. All rights reserved.
//

import SwiftUI

struct FlagImage: View {
    var imageNamed: String = ""
    
    var body: some View {
        Image(self.imageNamed)
        .renderingMode(.original)
        .cornerRadius(5)
        .shadow(color: Color(.sRGB,
                             red: 0,
                             green: 0,
                             blue: 0,
                             opacity: 0.4),
                radius: 15, x: 0, y: 0)
        .overlay(RoundedRectangle(cornerRadius: 5)
            .stroke(Color.white, lineWidth: 4))
    }
}

struct FlagImage_Previews: PreviewProvider {
    static var previews: some View {
        FlagImage()
    }
}
