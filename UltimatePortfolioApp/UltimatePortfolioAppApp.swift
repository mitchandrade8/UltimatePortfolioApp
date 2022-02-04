//
//  UltimatePortfolioAppApp.swift
//  UltimatePortfolioApp
//
//  Created by Mitch Andrade on 12/16/21.
//

import SwiftUI

@main
struct UltimatePortfolioAppApp: App {
    @StateObject var dataController: DataController
    
    init() {
        let dataController = DataController()
        _dataController = StateObject(wrappedValue: dataController)
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
                .environmentObject(dataController)
        }
    }
}
