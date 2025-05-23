//
//  QuoteCardView.swift
//  Quotes-a-Lot
//
//  Created by Mohita Parashar on 22/05/25.
//

struct QuoteCardView: View {
    @Binding var quote: Quotes
    
    var body: some View {
        VStack(spacing: 20) {
            Text("“\(quote.text)”")
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundColor(.indigo)
                .multilineTextAlignment(.center)
            
            Text("- \(quote.author)")
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
    }
}
