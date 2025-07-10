//
//  IGTextFileModifier.swift
//  Instagramtutorial
//
//  Created by Fayzul Kobir Badal on 7/9/25.
//

import SwiftUI

struct IGTextFileModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray6))
            .cornerRadius(10)
            .padding(.horizontal, 24)
    }
}
