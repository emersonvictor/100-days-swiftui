//
//  ContentView.swift
//  WeSplit
//
//  Created by Emerson Victor on 14/02/20.
//  Copyright © 2020 emer. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - Form data
    @State private var orderSubtotal = ""
    @State private var numberOfPeople = 0
    @State private var tipPercentage = 2
    let tipPercentages = [0,10, 15, 20, 25]
    
    // MARK: - Computed values
    var total: Double {
        let tipPercentage = Double(self.tipPercentages[self.tipPercentage])
        let orderAmount = Double(self.orderSubtotal) ?? 0
        
        return orderAmount + (orderAmount * (tipPercentage/100))
    }
    
    var totalByPerson: Double {
        let peopleCount = Double(self.numberOfPeople + 2)
        
        return self.total / peopleCount
    }
    
    // MARK: - Body
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Valor", text: $orderSubtotal)
                    .keyboardType(.decimalPad)
                }
                
                Section {
                    Picker("Número de pessoas",
                           selection: self.$numberOfPeople) {
                            ForEach(2..<50) {
                                Text("\($0) people")
                            }
                    }
                }
                
                Section(header: Text("Escolha a pocentagem da taxa de serviço:")) {
                    Picker("Taxa de serviço",
                           selection: self.$tipPercentage) {
                            ForEach(0..<self.tipPercentages.count) {
                                Text("\(self.tipPercentages[$0])%")
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())

                }
                
                Section(header: Text("Total:")) {
                    Text("R$\(self.total, specifier: "%.2f")")
                        .foregroundColor(self.tipPercentage == 0 ? .red : .white)
                }
                
                Section(header: Text("Total por pessoa:")) {
                    Text("R$\(self.totalByPerson, specifier: "%.2f")")
                }
            }
        .navigationBarTitle("WeSplit")
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
