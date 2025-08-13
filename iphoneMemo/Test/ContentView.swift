//
//  ContentView.swift
//  iphoneMemo
//
//  Created by 10100 on 8/5/25.
//

import SwiftUI

struct ContentView: View {
    @State private var numberOfDice: Int = 1

    var body: some View {

        VStack {
            Text("Dice Roller")
                .font(.largeTitle.lowercaseSmallCaps())
                .foregroundStyle(.white)

            HStack {
                ForEach(1...numberOfDice, id: \.description) { _ in
                    DiceView()

                }
            }
            HStack {
                Button("Remove Dice", systemImage: "minus.circle.fill") {
                    withAnimation {
                        numberOfDice -= 1
                    }
                }
                .disabled(numberOfDice == 1)

                Button("Add Dice", systemImage: "plus.circle.fill") {
                    withAnimation {
                        numberOfDice += 1
                    }
                }
                .disabled(numberOfDice == 5)

            }
            .padding()
            .labelStyle(.iconOnly)
            .font(.title)

        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.appBackground)
        .tint(.white)
    }
}

#Preview {
    ContentView()
}

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
//}
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
