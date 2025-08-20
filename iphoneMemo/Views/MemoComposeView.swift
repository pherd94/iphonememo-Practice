//
//  MemoComposeView.swift
//  iphoneMemo
//
//  Created by 10100 on 8/19/25.
//

import SwiftUI
import SwiftData

struct MemoComposeView: View {
    var onSave: (String) -> Void // 저장할 때 실행할 클로저
    @Environment(\.dismiss) private var dismiss
    @Environment(\.modelContext) private var context
    @State private var text: String = ""
    
    
    var body: some View {
        VStack {
            // 본문 입력 영역
            TextEditor(text: $text)
                .padding()
                .ignoresSafeArea(.keyboard, edges: . bottom)
        }
        .navigationTitle("새 메모")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar{
            ToolbarItem(placement: .topBarLeading) {
                Button("취소") {
                    dismiss()
                    
                }
            }
            
            ToolbarItem(placement: . topBarTrailing) {
                Button("완료") {
                    let trimmed = text.trimmingCharacters(in: .whitespacesAndNewlines)
                    
                    if !trimmed.isEmpty {
                        let newMemo = MemoModel(memo: trimmed)
                        context.insert(newMemo)
                        try? context.save()
                    }
                    
                    dismiss()
                }
            }
        }
    }
}

//#Preview {
//    MemoComposeView()
//    
//}
