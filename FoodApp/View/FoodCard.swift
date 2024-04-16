//
//  FoodCard.swift
//  FoodApp
//
//  Created by MacBook Pro on 16/04/24.
//
import SwiftUI

struct FoodCard: View {
    var food: Food
    
    var body: some View {
        VStack {
            ImageHeaderHor(food: food)
            FoodHeaderHorizontal(food: food)
                .padding([.top, .horizontal])
        }
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .overlay{
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.sRGB, 
                              red: 149/255,
                              green: 165/255,
                              blue: 166/255,
                              opacity: 0.2),
                        lineWidth: 1.0)
            
        }
        
    }
}

#Preview {
    FoodCard(food: Food.foodData[1])
        .padding()
}

// MARK: - HEADER UNTUK FOOD
struct ImageHeaderHor: View {
    var food: Food
    
    var body: some View {
        ZStack (alignment: .topLeading){
            Image(food.image)
                .resizable()
                .scaledToFill()
                .frame(height: 300)
                .clipped()
            
            HStack {
                Image(systemName: "mappin.and.ellipse.circle")
                Text(food.location)
            }
            .foregroundStyle(.white)
            .padding(10)
            .background(
                UnevenRoundedRectangle(
                    cornerRadii:
                            .init(
                                topLeading:  0.0,
                                bottomTrailing: 10.0
                            )
                    
                )
                .foregroundStyle(.black.opacity(0.8))
                
            )
        }
    }
}

struct FoodHeaderHorizontal: View {
    var food: Food
    var body: some View {
        HStack {
            VStack(alignment:.leading,spacing: 8){
                Text(food.category.joined(separator: ","))
                    .font(.headline)
                    .foregroundStyle(.secondary)
                
                Text(food.heading)
                    .font(.title)
                    .fontWeight(.black)
                    .foregroundStyle(.primary)
                    .lineLimit(3,
                               reservesSpace: true)
                
                Text("Chef By ,\(food.chef)")
                    .textCase(.uppercase)
                    .font(.caption)
                    .foregroundStyle(.secondary)
                    .padding(.bottom)
            }
            .padding(.top,16)
            Spacer()
            
        }
    }
}
