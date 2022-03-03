//
//  Binding-OnChange.swift
//  UltimatePortfolioApp
//
//  Created by Mitch Andrade on 2/4/22.
//

import SwiftUI

extension Binding {
    func onChange(_ handler: @escaping () -> Void) -> Binding<Value> {
        Binding(
            get: { self.wrappedValue },
            set: { newValue in
                self.wrappedValue = newValue
                handler()
            }
        )
    }
}
