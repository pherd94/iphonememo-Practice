//
//  ContentView.swift
//  iphoneMemo
//
//  Created by 10100 on 8/5/25.
//
//

import SwiftUI


struct ContentView: View {
@State private var names: [String] = ["Elisha", "Andre", "Jasmine", "Po-chun"]
@State private var nameToAdd = ""
@State private var pickedName = ""
@State private var shouldRemovePickedName = false


var body: some View {
    VStack {
        Text(pickedName.isEmpty ? " " : pickedName)
        
        List {
            ForEach(names, id: \.description) { name in
                Text(name)
            }

        }

        TextField("Add Name", text: $nameToAdd)
            .autocorrectionDisabled()
            .onSubmit {
                if !nameToAdd.isEmpty {
                    names.append(nameToAdd)
                    nameToAdd = ""
                }
            }
        
        Divider()
        
        Toggle("Remove when picked", isOn: $shouldRemovePickedName)
        
        Button("Pick Random Name") {
            if let randomName = names.randomElement() {pickedName = randomName
                
                if shouldRemovePickedName {
                    names.removeAll {name in
                        return (name == randomName)}
                }
            
            } else {
                pickedName = ""
            }
        }
    }
    .padding()
//>>>>>>> ffaef62 (테스트뷰)
}
}

#Preview {
ContentView()
}
//<<<<<<< HEAD


//struct ContentView: View {
//<<<<<<< HEAD
//    @State private var numberOfDice: Int = 1
//
//    var body: some View {
//
//        VStack {
//            Text("Dice Roller")
//                .font(.largeTitle.lowercaseSmallCaps())
//                .foregroundStyle(.white)
//
//            HStack {
//                ForEach(1...numberOfDice, id: \.description) { _ in
//                    DiceView()
//
//                }
//            }
//            HStack {
//                Button("Remove Dice", systemImage: "minus.circle.fill") {
//                    withAnimation {
//                        numberOfDice -= 1
//                    }
//                }
//                .disabled(numberOfDice == 1)
//
//                Button("Add Dice", systemImage: "plus.circle.fill") {
//                    withAnimation {
//                        numberOfDice += 1
//                    }
//                }
//                .disabled(numberOfDice == 5)
//
//            }
//            .padding()
//            .labelStyle(.iconOnly)
//            .font(.title)
//
//        }
//        .padding()
//        .frame(maxWidth: .infinity, maxHeight: .infinity)
//        .background(.appBackground)
//        .tint(.white)
//=======
//  
//=======
//>>>>>>> ffaef62 (테스트뷰)
//let gradientColors:[Color] = [
//    .gradientTop,
//    .gradientBottom
//]
//
//struct ContentView: View {
//    var body: some View {
//        TabView {
//            WelcomePage()
//            FeaturesPage()
//        }
//        .background(Gradient(colors: gradientColors))
//        .tabViewStyle(.page)
//    }
////}
//<<<<<<< HEAD
//=======
//
//#Preview {
//    ContentView()
//}
//>>>>>>> ffaef62 (테스트뷰)
//struct ContentView: View {
//    var body: some View {
//        HStack {
//            DayForecast(day: "Mon", isRainy: false, high: 70, low: 50)
//
//            DayForecast(day: "Tue", isRainy: true, high: 60, low: 40)
//
//        }
//    }
//}
//
//#Preview {
//    ContentView()
//}
//
//struct DayForecast: View {
//    let day: String
//    let isRainy : Bool
//    let high: Int
//    let low: Int
//
//    var iconName: String {
//        if isRainy {
//            return "cloud.rain.fill"
//        } else {
//            return "sun.max.fill"
//        }
//    }
//
//    var iconColor : Color {
//        if isRainy {
//            return Color.blue
//        } else {
//            return Color.yellow
//        }
//    }
//
//    var body: some View {
//        VStack {
//            Text(day)
//                .font(Font.headline)
//            Image(systemName: iconName)
//                .foregroundStyle(iconColor)
//                .font(Font.largeTitle)
//                .padding(5)
//            Text("High: \(high)")
//                .fontWeight(Font.Weight.semibold)
//            Text("Low: \(low)")
//                .fontWeight(Font.Weight.medium)
//                .foregroundStyle(Color.secondary)
//        }
//        .padding()
//    }
//}
