//
//  Style.button.swift
//  Calculator2
//
//  Created by Moussa Idaassi on 13/04/2022.
//

import SwiftUI

struct CalculatorButton: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .padding()
            .background(Color.orange)
            .cornerRadius(200)
    }
}

extension View {
    func calculatorButton() -> some View {
        ModifiedContent(content: self, modifier: CalculatorButton())
    }
}
