//
//  Food.swift
//  FoodApp
//
//  Created by MacBook Pro on 16/04/24.
//

import Foundation

struct Food: Identifiable {
    let id = UUID()
    let image: String
    let category: [String]
    let heading: String
    let chef: String
    let location: String
}

// MARK: - DUMMY DATA
extension Food {
    static let foodData: [Food] = [
        Food(
            image: "carbonara",
            category: ["Dine in", "Take away", "Delivery"],
            heading: "Indulge in Creamy Linguine Carbonara!",
            chef: "Geovanni Deliozioso",
            location: "Ristornate Bella Cucina"
        ),
        
        Food(
            image: "friedrice",
            category: ["Delivery"],
            heading: "Spicy Fried Rice with Sizzle Beef",
            chef: "Ibu Siti",
            location: "Warung Rasa Nusantara"
        ),
        
        Food(
            image: "mieayam",
            category: ["Take Away", "Delivery"],
            heading: "Savor the Irresistible Noodle!",
            chef: "Budi Santoso",
            location: "Warung Makan Mas budi"
        ),
        
        Food(
            image: "salmonsteak",
            category: ["Dine in", "Take away"],
            heading: "Grilled Citrus Salmon Steak.",
            chef: "Ari Wijaya",
            location: "Seafood Delights Bistro"
        )
        
    ]
}
