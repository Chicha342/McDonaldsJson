//
//  Menu.swift
//  MacJson
//
//  Created by Никита on 10.07.2025.
//

import SwiftUI

struct Menu: View {
    @StateObject var networkService = NetworkService()
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                ZStack{
                    
                    ScrollView{
                        LazyVStack(spacing: -10){
                            
                            ForEach(Array(stride(from: 0, to: networkService.menuItems.count, by: 2)), id: \.self){ i in
                                
                                HStack{
                                    MenuRow(itemsMenu: networkService.menuItems[i])
                                    
                                    if i + 1 < networkService.menuItems.count {
                                        MenuRow(itemsMenu: networkService.menuItems[i + 1])
                                    }else{
                                        Spacer()
                                    }
                                }
                                .frame(maxWidth: .infinity)
                                .padding(.vertical)
                                
                            }
                            
                            
                            
                            
                        }
                        
                    }
                }
            }
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading){
                    Image("mac")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 42, height: 42)
                        .clipped()
                        .cornerRadius(5)
                        .padding(.leading)
                        .padding(.bottom)
                }
                
                ToolbarItem(placement: .navigationBarLeading){
                    Image("macName")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .clipped()
                        .cornerRadius(5)
                        .padding(.leading)
                        .padding(.bottom)
                }

                
                ToolbarItem(placement: .navigationBarTrailing){
                    Image(systemName: "cart")
                        .font(.system(size: 18, weight: .semibold))
                        .foregroundStyle(.white)
                        .frame(width: 40, height: 40)
                        .background(Color.orange)
                        .clipShape(Circle())
                        .padding(.bottom)
                        .padding(.trailing)
                        
                        
                }
                
            }
        }
        .task {
            await networkService.fetchMenuItems()
        }
        
    }
}

#Preview {
    Menu()
}
