//
//  MemoModel.swift
//  iphoneMemo
//
//  Created by 10100 on 8/7/25.
//

import Foundation
import SwiftData

@Model
class MemoModel {
    var memo : String
    
    init(memo: String) {
        self.memo = memo
    }
}

//struct MemoModel: {
//    
//    
//}
