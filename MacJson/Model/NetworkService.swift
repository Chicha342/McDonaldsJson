//
//  ViewModel.swift
//  MacJson
//
//  Created by Никита on 10.07.2025.
//

import SwiftUI

class NetworkService: ObservableObject {
    @Published var menuItems = [MenuItem]()
    
    func fetchMenuItems() async {
        let url = "https://gist.githubusercontent.com/Chicha342/c722353d67858140246cdc612fbb0e14/raw/91255834dab73b54da13f18b5e741b725c63238a/gistfile1.txt"
        
        guard let url = URL(string: url) else { return }
        
        do{
            let (data, _) = try await URLSession.shared.data(from: url)
            let decoded = try JSONDecoder().decode([MenuItem].self, from: data)
            DispatchQueue.main.async {
                self.menuItems = decoded
            }
            
        }catch{
            print("Error")
        }
    }
}
