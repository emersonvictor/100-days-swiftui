//
//  ContentView.swift
//  Units
//
//  Created by Emerson Victor on 18/02/20.
//  Copyright © 2020 emer. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var choosedUnit = 0
    @State var initialUnit = 0
    @State var finalUnit = 0
    @State var value = ""
    
    let units = Units.allCases
    var unitValues: [UnitsProtocol] {
        let unit = self.units[self.choosedUnit]
        return unit.values
    }
    var convertedValue: Double {
        return (Double(self.value) ?? 0) + 10
    }
    
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Picker("Escolha a unidade",
                           selection: $choosedUnit) {
                            ForEach(0..<self.units.count) {
                                Text(self.units[$0].stringValue)
                            }
                    }
                }
                
                Section(header: Text("Medida inicial:")) {
                    Picker("Medida inicial",
                           selection: $initialUnit) {
                            ForEach(0..<self.unitValues.count, id: \.self) {
                                Text(self.unitValues[$0].stringValue)
                            }
                    }.pickerStyle(SegmentedPickerStyle())
                }
                
                Section(header: Text("Medida final:")) {
                    Picker("Medida final",
                           selection: $finalUnit) {
                            ForEach(0..<self.unitValues.count, id: \.self) {
                                Text(self.unitValues[$0].stringValue)
                            }
                    }.pickerStyle(SegmentedPickerStyle())
                }
                
                Section {
                    TextField("Valor:", text: $value)
                        .keyboardType(.decimalPad)
                    Text("Valor convertido: \(self.value)")
                }
            }
        
        .navigationBarTitle("Units")
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
