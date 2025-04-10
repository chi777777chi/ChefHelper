//
//  Extension.swift
//  ChefHelper
//
//  Created by 陳泓齊 on 2025/4/9.
//

import SwiftUI
extension View{
    func scanningButtonStyle() -> some View{
        padding()
        .background(Color.brandOrange)
        .foregroundColor(.white)
        .cornerRadius(10)
    }
    
}

extension Color {
    static let brandOrange = Color(red: 178/255, green: 72/255, blue: 22/255)
}

