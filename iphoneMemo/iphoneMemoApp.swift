//
//  iphoneMemoApp.swift
//  iphoneMemo
//
//  Created by 10100 on 8/5/25.
//

import SwiftUI
import SwiftData

@main
struct iphoneMemoApp: App {
    var body: some Scene {
        WindowGroup {
            FolderListView()
                .modelContainer(for: FolderModel.self)
                .modelContainer(for: MemoModel.self)
        }
    }
}
