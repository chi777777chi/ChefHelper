//
//  Ingredients.swift
//  ChefHelper
//
//  Created by 陳泓齊 on 2025/4/9.
//
import Foundation

struct Ingredients:Identifiable{
    var name: String
    var weight : Double
    let id = UUID()
    static let examples = [
        Ingredients(name: "steak", weight: 20),
        Ingredients(name: "oil", weight: 10)
    
    ]
    
    
}
