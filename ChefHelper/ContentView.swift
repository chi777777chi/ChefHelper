//
//  ContentView.swift
//  ChefHelper
//
//  Created by 陳泓齊 on 2025/4/9.
//

import SwiftUI

struct ContentView: View {
    @State private var ingredients = Ingredients.examples
    @State private var equipmentItems = ["", ""]

    var body: some View {
        VStack(spacing:10) {
            HStack {
                Spacer()
                Image("QuickFeatLogo")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 60) // 或你想要的尺寸
            }
            Text("EQUIPMENT")
            EquipmentInfoView
            
            Button("Scaning") {
                equipmentItems = ["Pan"]
            }
            .scanningButtonStyle().scaleEffect(0.8)
            
            Text("INGREDIENT")
            IngredientInfoView
            Button("Scaning") {
            }
            .scanningButtonStyle().scaleEffect(0.8)
            VStack(){
                Image(systemName: "person.3.fill") // or your custom image
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 40)
                        .foregroundColor(.brandOrange)

                // TITLE
                Text("PEOPLE")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                Button(action: {
                        print("Generate tapped")
                    }) {
                        Text("Generate Recipe")
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.brandOrange)
                            .cornerRadius(20)
                    }
                    .padding(.horizontal, 20)
                    .scaleEffect(0.9)

                }
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color(red: 1.0, green: 0.8, blue: 0.7))
                .cornerRadius(30)
                .shadow(color: .black.opacity(0.1), radius: 5, x: 0, y: 3)
                .padding(.horizontal, 20)

        }
        .font(.title)
        .foregroundColor(.brandOrange)
        .bold()
        .padding(.horizontal, 20)
        ZStack{
            BottomBar()
            // Floating Home Button (in front and slightly up)
            Button(action: {}) {
                Image(systemName: "house.circle.fill")
                    .font(.system(size: 50))
                    .foregroundStyle(Color.brandOrange)
            }
            .offset(y:-50)
        }
        .ignoresSafeArea(edges: .bottom)
        .offset(y:25)
    }

}

private extension ContentView {
    var EquipmentInfoView : some View{
        VStack(spacing: 8) {
            ForEach(equipmentItems.indices, id: \.self) { index in
                TextField("Item", text: $equipmentItems[index])
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
        }
    }
    var IngredientInfoView : some View{
        List {
            ForEach(ingredients) { ingredient in
                Text(ingredient.name)
            }
        }
        .listStyle(.plain)
        .frame(height: 120)
        .foregroundColor(.black)
    }
}

struct BottomBar: View {
    var body: some View {
        HStack {
            Spacer()
            
            Button(action: {
                print("第一個 icon 被點了")
            }) {
                Image(systemName: "house.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 24, height: 24)
                    .foregroundColor(.white)
            }
            
            Spacer()
            
            Button(action: {
                print("第二個 icon 被點了")
            }) {
                Image(systemName: "magnifyingglass")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 24, height: 24)
                    .foregroundColor(.white)
            }
            
            Spacer()
            
            Button(action: {
                print("第三個 icon 被點了")
            }) {
                Image(systemName: "person.crop.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 24, height: 24)
                    .foregroundColor(.white)
            }
            
            Spacer()
        }
        .padding(.vertical, 14)
//        .frame(maxWidth: .infinity)
        .background(Color.brandOrange)
    }
}



#Preview {
    ContentView()
}

