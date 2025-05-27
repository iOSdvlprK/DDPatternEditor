//
//  CodePreview.swift
//  DDPatternEditor
//
//  Created by joe on 5/26/25.
//

import SwiftUI

struct CodePreview: View {
//    @Binding var name: String
    let name: String
    let codeString: String
    
    var body: some View {
        Group {
            if name.isEmpty {
                ContentUnavailableView("Name your Pattern", image: "pencil")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.red.opacity(0.2))
            } else {
                ScrollView {
                    HStack {
                        Text(codeString)
                            .font(.title3)
                            .multilineTextAlignment(.leading)
                        Spacer()
                    }
                }
                .padding()
                .background(Color.blue.opacity(0.2))
                .clipShape(.rect(cornerRadius: 15))
                .onDrag {
                    NSItemProvider(object: codeString as NSItemProviderWriting)
                }
            }
        }
    }
}

@available(iOS 17.0, *)
#Preview(traits: .fixedLayout(width: 400, height: 300)) {
    CodePreview(
        name: "pattern",
        codeString:
"""
if name.isEmpty {
    ContentUnavailableView("Name your Pattern", image: "pencil")
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.red.opacity(0.2))
} else {
    ScrollView {
        Text(codeString)
            .font(.largeTitle)
            .multilineTextAlignment(.leading)
    }
    .padding()
    .background(Color.blue.opacity(0.2))
    .clipShape(.rect(cornerRadius: 15))
}
"""
    )
}
