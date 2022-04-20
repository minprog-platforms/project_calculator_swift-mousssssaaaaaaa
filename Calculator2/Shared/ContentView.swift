//
//  ContentView.swift
//  Shared
//
//  Created by Moussa Idaassi on 13/04/2022.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext
    
    @State var value = "0"
    @State var action = "0";
    
    /// <#Description#>
    var body: some View {
        VStack {
            // Display
                HStack {
                    Spacer()
                    Text(value)
                    .bold()
                    .font(.system(size: 50))
                }.padding()

                // Buttons
                HStack {
                        VStack {
                            Button("AC") {didTap(action: "AC")}.calculatorButton()
                            Button("7") {didTap(action: "7")}.calculatorButton()
                            Button("4") {didTap(action: "4")}.calculatorButton()
                            Button("1") {didTap(action: "1")}.calculatorButton()
                        }
                        VStack {
                            Button("+/-") {didTap(action: "0")}.calculatorButton()
                            Button("8") {didTap(action: "8")}.calculatorButton()
                            Button("5") {didTap(action: "5")}.calculatorButton()
                            Button("2") {didTap(action: "2")}.calculatorButton()
                        }
                        VStack {
                            Button("%") {didTap(action: "%")}.calculatorButton()
                            Button("9") {didTap(action: "9")}.calculatorButton()
                            Button("6") {didTap(action: "6")}.calculatorButton()
                            Button("3") {didTap(action: "3")}.calculatorButton()
                        }
                        VStack {
                            Button("/") {didTap(action: "/")}.calculatorButton()
                            Button("x") {didTap(action: "x")}.calculatorButton()
                            Button("-") {didTap(action: "-")}.calculatorButton()
                            Button("+") {didTap(action: "+")}.calculatorButton()
                        }
                }.frame(maxWidth: .infinity)
            }
    }
    
// LOGIC (moet nog worden verplaatst)?????????
func didTap(action: String) {
    // using 'AC'
    if action == "AC" {
        self.value = "0"
    }
    
    // berekeningen, met strings of eerst string> int??????
//    // using '+'
//    else if action == "+" {
//        let sum = Int(action) + Int(value)
//        self.value = "\(sum)"
//        self.value = "\(5 + 5)"
//    }
    
    // using digits
    else if self.value == "0" {
        value = action
    }
    else {
        self.value = "\(self.value)\(action)"
    }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
        }
        }
    }
}
