//
//  Quotes_a_LotViewModel.swift
//  Quotes-a-Lot
//
//  Created by Mohita Parashar on 22/05/25.
//
import Foundation
import SwiftUI

class Quotes_a_LotViewModel: ObservableObject {
    
    @Published var currentQuote: Quotes
    
    init() {
        self.currentQuote = Self.getQuotes()
    }
    
    static func getQuotes() -> Quotes {
        return allQuotes.funnyQuotesList[0]
    }
    
    func getRandomFunnyQuote() {
        self.currentQuote = allQuotes.funnyQuotesList.randomElement()!
    }
    
    func getRandomInspirationalQuote() {
        self.currentQuote = allQuotes.inspirationalQuotes.randomElement()!
    }
    
    func getRandomQuoteFromAnyList() {
        let allQuoteLists = [allQuotes.funnyQuotesList, allQuotes.inspirationalQuotes]
        let randomList = allQuoteLists.randomElement() ?? []
        if let quote = randomList.randomElement() {
            self.currentQuote = quote
        }
    }
}
