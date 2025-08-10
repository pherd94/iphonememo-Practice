//
//  FolderListView.swift
//  iphoneMemo
//
//  Created by 10100 on 8/10/25.
//

import SwiftUI

struct FolderListView: View {

    var body: some View {
        NavigationStack{
            List{NavigationLink("빠른메모", value: Color.white )
            }
            .navigationTitle("폴더")
        }
        
    }
}
#Preview {
    FolderListView()
}
