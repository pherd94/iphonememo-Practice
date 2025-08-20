//
//  QuickMemoView.swift
//  iphoneMemo
//
//  Created by 10100 on 8/11/25.
//

import SwiftData
import SwiftUI

struct QuickMemoView: View {
    @State private var searchText: String = ""
    @Query private var folders: [MemoModel]
    @Environment(\.modelContext) private var context

    var body: some View {
        MemoSearchView(searchText: $searchText)
    }
}

#Preview {
    QuickMemoView()
}

struct MemoSearchView: View {
    @Binding var searchText: String

    var body: some View {
        RoundedRectangle(cornerRadius: 8)
            .fill(.white)
            .frame(width: UIScreen.main.bounds.width - 40, height: 40)
            .overlay(
                HStack {
                    Image(systemName: "magnifyingglass")
                    TextField("검색", text: $searchText)
                }
                .padding(.horizontal, 10)
            )
    }
}
