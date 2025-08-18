//
//  FolderListView.swift
//  iphoneMemo
//
//  Created by 10100 on 8/10/25.
//

import SwiftUI
import SwiftData

struct FolderListView: View {
    @Query private var Folders : [FolderModel]
    @Environment(\.modelContext) private var context
    
    var body: some View {
        NavigationStack {
            List { NavigationLink("빠른메모", value: Color.white) }
                .navigationDestination(for: String.self) { string in
                    if string == "빠른메모" { QuickMemoView() }
                }
                .navigationTitle("폴더")
            Button("",systemImage:"plus")
            
        }

    }

}

#Preview {
    FolderListView()
}
