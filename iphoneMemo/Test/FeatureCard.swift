//
//  FeatureCard.swift
//  iphoneMemo
//
//  Created by 10100 on 8/12/25.
//

import SwiftUI

struct FeatureCard: View {
    var body: some View {
        HStack {
            Image(systemName : iconName)
                .font(.largeTitle)
            Text(description)
        }
        .background(.tint, in: RoundedRectangle(CornerRadius:12))
        
    }
}

#Preview {
    FeatureCard()
}
