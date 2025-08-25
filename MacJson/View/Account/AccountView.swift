//
//  AccountView.swift
//  MacJson
//
//  Created by Никита on 25.08.2025.
//

import SwiftUI

struct AccountView: View {
    var body: some View {
        NavigationView {
            
            
            VStack{
                RoundedRectangle(cornerRadius: 250)
                    .fill(Color.gray)
                    .overlay {
                        AsyncImage(url: URL(string: "https://images.ctfassets.net/hrltx12pl8hq/28ECAQiPJZ78hxatLTa7Ts/2f695d869736ae3b0de3e56ceaca3958/free-nature-images.jpg?fit=fill&w=1200&h=630")) { image in
                            image
                                .resizable()
                        } placeholder: {
                            RoundedRectangle(cornerRadius: 250)
                                .fill(Color.gray)
                        }
                        
                    }
                    .frame(width: 250, height: 250)
                    .cornerRadius(250)
                    .padding()
                
                Text("Name")
                    .font(.system(size: 24, weight: .bold))
                    .foregroundStyle(.black)
                
                Text("nikitayakushe1@gmailcom")
                    .font(.system(size: 20, weight: .semibold))
                    .foregroundStyle(.gray)
                
                Button(action: {}) {
                    Text("Edit Profile")
                        .font(.system(size: 18, weight: .medium))
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
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
        
    }
}

#Preview {
    AccountView()
}
