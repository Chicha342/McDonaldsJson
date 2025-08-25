//
//  MenuRow.swift
//  MacJson
//
//  Created by Никита on 10.07.2025.
//

import SwiftUI

struct MenuRow: View {
    let itemsMenu: MenuItem
    
    var body: some View {
        VStack{
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.white)
                    .shadow(radius: 8, x: 0, y: 5)
                    .frame(width: 150, height: 200)
                VStack{
                    AsyncImage(url: URL(string: itemsMenu.image)) { image in
                        image.resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                            .padding(.bottom)
                        
                    } placeholder: {
                        ZStack{
                            ProgressView()
                                .frame(width: 100, height: 100)
                                .zIndex(1)
                        }
                    }
                    .frame(width: 100, height: 100)
                    .cornerRadius(10)
                    
                    Text(itemsMenu.name)
                        .font(.headline)
                        .frame(width: 150)
                    
                    Text("\(itemsMenu.price) ₴")
                        .font(.system(size: 13, weight: .semibold, design: .default))
                    
                    Button(action: {
                        
                    }) {
                        Text("В корзину")
                            .foregroundColor(.white)
                            .padding()
                            .font(.system(size: 14, weight: .semibold, design: .default))
                            .frame(width: 140, height: 40)
                            .background(Color.orange)
                            .cornerRadius(8)
                    }
                    
                }
            }
            Text(itemsMenu.description)
                .padding(5)
                .frame(width: 150)
                .font(.system(size: 13, weight: .semibold, design: .default))
                .background(Color.gray.opacity(0.15))
                .cornerRadius(10)
                
        }
    }
}

#Preview {
    MenuRow(itemsMenu: MenuItem(id: 1, name: "Big Mac", category: "Burgers", price: 89, description: "Двойной бургер с говядиной, сыром и фирменным соусом.", image: "https://s7d1.scene7.com/is/image/mcdonalds/DC_202201_0007-005_QuarterPounderwithCheese_1564x1564-1:nutrition-calculator-tile"))
}
