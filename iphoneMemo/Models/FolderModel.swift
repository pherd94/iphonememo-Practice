//
//  FolderModel.swift
//  iphoneMemo
//
//  Created by 10100 on 8/7/25.
//

import Foundation
import SwiftData

@Model
class FolderModel {
    var foldername: String
//    var memos: [MemoModel]
    
    init(foldername: String){
        self.foldername = foldername
    }
}
//struct Folder: Identifiable {
//    let id: UUID
//    var name: String
//    var memos: [Memo]
//
//}
