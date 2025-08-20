//
//  FolderListView.swift
//  iphoneMemo
//
//  Created by 10100 on 8/10/25.
//

import SwiftData
import SwiftUI

struct FolderListView: View {
    @Environment(\.modelContext) private var context

    @Query(sort: [SortDescriptor(\FolderModel.foldername, order: .forward)]) // 폴더 목록 이름 오른차순 정렬
           private var folders: [FolderModel]
    @State private var searchText: String = ""  // 검색어
    @State private var showNewFolderSheet = false
    @State private var newFolderName = ""

    var body: some View {
        NavigationStack {
            List {
                //폴더 섹션
                Section("폴더") {
                    ForEach(filteredFolders) { folder in
                        HStack {
                            Image(systemName: "folder")
                            Text(folder.foldername)
                        }
                    }
                    .onDelete(perform: deleteFolders)
                }
                Section {
                    NavigationLink("빠른메모", value: "빠른메모")
                }
                
                .navigationTitle("폴더")
                .navigationBarTitleDisplayMode(.large)
                .navigationDestination(for: String.self) { s in
                    if s == "빠른메모" { QuickMemoView() }
                }
                .searchable(
                    text: $searchText,
                    placement: .navigationBarDrawer(displayMode: .always)
                )
                .toolbar {
                    ToolbarItem(placement: .primaryAction) {
                        NavigationLink {
                            MemoComposeView { text in
                                
                                let t = text.trimmingCharacters(
                                    in: .whitespacesAndNewlines
                                )
                                if !t.isEmpty {
                                    context.insert(MemoModel(memo: t))
                                    try? context.save()
                                    
                                }
                            }
                        } label: {
                            Image(systemName: "square.and.pencil")
                        }
                    }
                }
                
                //                VStack{
                ////                    FolderSearchView(searchText: $searchText)
                ////                        .padding(.top)
                //                    NavigationLink("빠른메모", value: "빠른메모")
                //                    .navigationDestination(for: String.self) { string in
                //                        if string == "빠른메모" {
                ////                            QuickMemoView()
                //                        }
                //                    }
                //
                //                }
                
                //                .navigationTitle("폴더")
            }
            
        }
    }
}

#Preview {
    FolderListView()
}

//struct FolderSearchView: View {
//    @Binding var searchText: String
//
//    var body: some View {
//        RoundedRectangle(cornerRadius: 8)
//            .fill(.white)
//            .frame(width: UIScreen.main.bounds.width - 40, height: 40)
//            .overlay(
//                HStack {
//                    Image(systemName: "magnifyingglass")
//                    TextField("검색", text: $searchText)
//                }
//                    .padding(.horizontal, 10)
//            )
//    }
//}
