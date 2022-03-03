//
//  SKProduct-LocalizedPrice.swift
//  UltimatePortfolioApp
//
//  Created by Mitch Andrade on 2/25/22.
//

import StoreKit

extension SKProduct {
    var localizedPrice: String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = priceLocale
        return formatter.string(from: price)!
    }
}
