//
//  FoodCardHorizontal.swift
//  FoodApp
//
//  Created by MacBook Pro on 16/04/24.
//

import SwiftUI

struct FoodCardHorizontal: View {
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    UnevenRoundedRectangle(cornerRadii: .init(topLeading: 0, bottomLeading: 40, bottomTrailing: 40, topTrailing: 0))
                        .frame(height: 120)
                    
                    Spacer()
                }
                .foregroundStyle(.burungBiru)
                .ignoresSafeArea()
                
                
                
                
                VStack(alignment: .leading) {
                    
                    Text("\(currentFoodDate())")
                        .foregroundStyle(.secondary)
                        .padding(.leading)
                    
                    Text("Your Last Viewed")
                        .font(.system(.title, design: .rounded))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .padding(.leading)
                

                
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 20) {
                        ForEach(Food.foodData) { food in
                            FoodCard(food: food)
                                .frame(width: 300)
                        }
                    }
                    .padding()
                }
            }
                    
                    VStack { 
                        Spacer()
                        UnevenRoundedRectangle(cornerRadii: .init(topLeading: 40, bottomLeading: 0, bottomTrailing: 0, topTrailing: 40))
                            .frame(height: 80)
                        
                    }
                    .foregroundStyle(.burungBiru)
                    .ignoresSafeArea(edges: .all)
                    
                }
                
                
                
                .navigationTitle("Food Order")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    Button {
                        print("Cart button tapped")
                    } label: {
                        Image(systemName: "cart")
                            .foregroundStyle(
                                .black)
                    }
                }
                
            }
        }
    
    private func currentFoodDate() -> String
    {
        let formatter =  DateFormatter()
            formatter.dateFormat = "EEEE, MMM d, yyyy"
            
            let results = formatter.string(from: Date())
            return results
    }
}


#Preview {
    FoodCardHorizontal()
}
