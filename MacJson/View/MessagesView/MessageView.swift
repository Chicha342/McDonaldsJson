//
//  MessageView.swift
//  MacJson
//
//  Created by Никита on 25.08.2025.
//

import SwiftUI

struct MessageView: View {
    var body: some View {
        NavigationView {
            
            
            VStack{
                Text("Hello")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
                    .overlay {
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color.black, lineWidth: 1)
                    }
                    .padding(.leading, 270)
                
                Text("Hello!!")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
                    .overlay {
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color.black, lineWidth: 1)
                    }
                    .padding(.trailing, 270)
                
                Text("Hello!!")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
                    .overlay {
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color.black, lineWidth: 1)
                    }
                    .padding(.trailing, 270)
                
                Text("Hello")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
                    .overlay {
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color.black, lineWidth: 1)
                    }
                    .padding(.leading, 270)
                
                Spacer()
                
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
    MessageView()
}
