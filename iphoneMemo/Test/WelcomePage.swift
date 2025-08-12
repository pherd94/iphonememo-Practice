//
//  WelcomePage.swift
//  iphoneMemo
//
//  Created by 10100 on 8/12/25.
//

import SwiftUI

struct WelcomePage: View {
    var body: some View {
        VStack {
            Text("Welcome to My App")
                .font(.title)
                .fontWeight(.semibold)
                .border(.black, width: 1.5)
            Text("Description text")
                .font(.title2)
                .border(.black, width: 1.5)
            
        }
        .border(.orange, width: 1.5)
        .padding()
        .border(.purple, width: 1.5)
    }
}

#Preview {
    WelcomePage()
}
