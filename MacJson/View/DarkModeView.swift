//
//  DarkModeView.swift
//  MacJson
//
//  Created by Никита on 25.08.2025.
//

import SwiftUI

struct DarkModeView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 0)
            .fill(Color.black)
            .ignoresSafeArea(edges: .all)
    }
}

#Preview {
    DarkModeView()
}
