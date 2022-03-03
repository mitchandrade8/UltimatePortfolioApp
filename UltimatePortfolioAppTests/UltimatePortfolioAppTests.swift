//
//  UltimatePortfolioAppTests.swift
//  UltimatePortfolioAppTests
//
//  Created by Mitch Andrade on 2/15/22.
//

import CoreData
import XCTest
@testable import UltimatePortfolioApp

class BaseTestCase: XCTestCase {
    var dataController: DataController!
    var managedObjectContext: NSManagedObjectContext!

    override func setUpWithError() throws {
        dataController = DataController(inMemory: true)
        managedObjectContext = dataController.container.viewContext
    }
}
