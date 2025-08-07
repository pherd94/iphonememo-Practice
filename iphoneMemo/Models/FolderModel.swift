//
//  FolderModel.swift
//  iphoneMemo
//
//  Created by 10100 on 8/7/25.
//

import Foundation

struct FolderModel: Identifiable {
    let id: UUID
    var name: String
    var memos: [MemoModel]
    
}
//struct Folder: Identifiable {
//    let id: UUID
//    var name: String
//    var memos: [Memo]
//
//}
