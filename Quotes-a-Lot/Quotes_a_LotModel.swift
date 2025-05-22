//
//  Quotes_a_LotModel.swift
//  Quotes-a-Lot
//
//  Created by Mohita Parashar on 22/05/25.
//
import Foundation

struct Quotes {
    var text: String
    let author: String
    let id = UUID()
}

struct allQuotes {
    static let funnyQuotesList: [Quotes] = [
        
        Quotes(text: "Two things are infinite: the universe and human stupidity; and I'm not sure about the universe.", author: "Albert Einstein"),
        Quotes(text: "The reason I talk to myself is because I’m the only one whose answers I accept.", author: "George Carlin"),
        Quotes(text: "You only live once, but if you do it right, once is enough.", author: "Mae West"),
        Quotes(text: "Insanity is doing the same thing, over and over again, but expecting different results.", author: "Narcotics Anonymous"),
        Quotes(text: "The person, be it gentleman or lady, who has not pleasure in a good novel, must be intolerably stupid.", author: "Jane Austen"),
        Quotes(text: "Outside of a dog, a book is man's best friend. Inside of a dog it's too dark to read.", author: "Groucho Marx"),
        Quotes(text: "A day without sunshine is like, you know, night.", author: "Steve Martin"),
        Quotes(text: "I love deadlines. I love the whooshing noise they make as they go by.", author: "Douglas Adams"),
        Quotes(text: "Anyone who thinks sitting in church can make you a Christian must also think that sitting in a garage can make you a car.", author: "Garrison Keillor"),
        Quotes(text: "Women and cats will do as they please, and men and dogs should relax and get used to the idea.", author: "Robert A. Heinlein"),
        Quotes(text: "All you need is love. But a little chocolate now and then doesn't hurt.", author: "Charles M. Schulz")
    ]
    
    static let inspirationalQuotes: [Quotes] = [
            Quotes(text: "Do one thing every day that scares you.", author: "Eleanor Roosevelt"),
            Quotes(text: "We are what we pretend to be, so we must be careful about what we pretend to be.", author: "Kurt Vonnegut Jr."),
            Quotes(text: "Hold fast to dreams, For if dreams die Life is a broken-winged bird, That cannot fly.", author: "Langston Hughes"),
            Quotes(text: "And now here is my secret, a very simple secret: It is only with the heart that one can see rightly; what is essential is invisible to the eye.", author: "Antoine de Saint-Exupéry"),
            Quotes(text: "Don't be pushed around by the fears in your mind. Be led by the dreams in your heart.", author: "Roy T. Bennett"),
            Quotes(text: "Instead of worrying about what you cannot control, shift your energy to what you can create.", author: "Roy T. Bennett"),
            Quotes(text: "If you're reading this... Congratulations, you're alive. If that's not something to smile about, then I don't know what is.", author: "Chad Sugg"),
            Quotes(text: "We delight in the beauty of the butterfly, but rarely admit the changes it has gone through to achieve that beauty.", author: "Maya Angelou"),
            Quotes(text: "What's meant to be will always find a way", author: "Trisha Yearwood"),
            Quotes(text: "Be the reason someone smiles. Be the reason someone feels loved and believes in the goodness in people.", author: "Roy T. Bennett")
        ]
}
