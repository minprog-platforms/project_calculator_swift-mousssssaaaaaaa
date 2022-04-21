
//
//  ContentView.swift
//  Shared
//
//  Created by Moussa Idaassi on 13/04/2022.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext
    
    // @State var value = "0"
    @State var action = "0";
    
    @State var calculator_logic = Logic()
    
    /// <#Description#>
    var body: some View {
        VStack {
            // Display
                HStack {
                    Spacer()
                    Text("\(calculator_logic.value)")
                    .bold()
                    .font(.system(size: 50))
                }.padding()

                // Buttons
                HStack {
                        VStack {
                            Button("AC") {calculator_logic.didTap(action: "AC")}.calculatorButton()
                            Button("7") {calculator_logic.didTap(action: 7)}.calculatorButton()
                            Button("4") {calculator_logic.didTap(action: 4)}.calculatorButton()
                            Button("1") {calculator_logic.didTap(action: 1)}.calculatorButton()
                            Button("0") {calculator_logic.didTap(action: 0)}.calculatorButton()
                            
                        }
                        VStack {
                            Button("+/-") {calculator_logic.didTap(action: "neg")}.calculatorButton()
                            Button("8") {calculator_logic.didTap(action: 8)}.calculatorButton()
                            Button("5") {calculator_logic.didTap(action: 5)}.calculatorButton()
                            Button("2") {calculator_logic.didTap(action: 2)}.calculatorButton()
                            Button("m") {calculator_logic.didTap(action: "magic_number")}.calculatorButton()
                        }
                        VStack {
                            Button("%") {calculator_logic.didTap(action: "%")}.calculatorButton()
                            Button("9") {calculator_logic.didTap(action: 9)}.calculatorButton()
                            Button("6") {calculator_logic.didTap(action: 6)}.calculatorButton()
                            Button("3") {calculator_logic.didTap(action: 3)}.calculatorButton()
                            Button(",") {calculator_logic.didTap(action: ",")}.calculatorButton()
                            
                        }
                        VStack {
                            Button("/") {calculator_logic.didTap(action: "/")}.calculatorButton()
                            Button("x") {calculator_logic.didTap(action: "x")}.calculatorButton()
                            Button("-") {calculator_logic.didTap(action: "-")}.calculatorButton()
                            Button("+") {calculator_logic.didTap(action: "+")}.calculatorButton()
                            Button("=") {calculator_logic.didTap(action: "=")}.calculatorButton()
                        }
                }.frame(maxWidth: .infinity)
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
