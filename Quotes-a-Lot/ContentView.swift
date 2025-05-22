//
//  ContentView.swift
//  Quotes-a-Lot
//
//  Created by Mohita Parashar on 22/05/25.
//
import SwiftUI

struct ContentView: View {
    
    @StateObject private var QuotesViewModel = Quotes_a_LotViewModel()
    
    var body: some View {
        ZStack {
            // Background gradient
            LinearGradient(gradient: Gradient(colors: [.purple.opacity(0.2), .blue.opacity(0.2)]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            VStack(spacing: 50) {
                Text("✨ Welcome to Quotes-a-Lot! ✨\n\nYour daily dose of wisdom, wit, and questionable life advice.")
                    .font(.title3)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.gray)
                    .padding(.horizontal)
                
                VStack(spacing: 20) {
                    Text("“\(QuotesViewModel.currentQuote.text)”")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(.indigo)
                        .multilineTextAlignment(.center)
                    
                    Text("- \(QuotesViewModel.currentQuote.author)")
                        .font(.subheadline)
                        .italic()
                        .foregroundColor(.secondary)
                }
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color.white)
                        .shadow(color: .gray.opacity(0.4), radius: 8, x: 0, y: 4)
                )
                .padding(.horizontal)

                LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 3), spacing: 20) {
                    createButton(text: "Funny", image: "face.smiling") {
                        QuotesViewModel.getRandomFunnyQuote()
                    }
                    
                    createButton(text: "Inspire", image: "lightbulb") {
                        QuotesViewModel.getRandomInspirationalQuote()
                    }
                    
                    createButton(text: "Random", image: "sparkles") {
                        QuotesViewModel.getRandomQuoteFromAnyList()
                    }
                }
                .padding(.top, 10)
            }
            .padding()
        }
    }
    
    func createButton(text: String, image: String, action: @escaping () -> Void) -> some View {
        Button(action: action) {
            VStack {
                Image(systemName: image)
                    .font(.title)
                Text(text)
                    .font(.footnote)
                    .fontWeight(.medium)
            }
            .frame(maxWidth: .infinity)
            .padding()
            .foregroundColor(.white)
            .background(Color.blue.gradient)
            .cornerRadius(12)
        }
    }
}

#Preview {
    ContentView()
}
