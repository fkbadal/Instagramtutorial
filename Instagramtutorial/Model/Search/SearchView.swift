//
//  SearchView.swift
//  Instagramtutorial
//
//  Created by Fayzul Kobir Badal on 7/8/25.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText =  ""
    var body: some View {
        NavigationStack {
            ScrollView{
                LazyVStack(spacing: 12){
                    ForEach(0 ... 15, id: \.self){user in
                        HStack{
                            Image("batman-2")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 60, height: 60)
                                .clipShape(Circle())
                            VStack(alignment: .leading, spacing: 4){
                                Text("batman")
                                    .fontWeight(.semibold)
                                Text("Bruce Wayne")
                            }
                            .font(.footnote)
                            Spacer()
                        }
                        .padding(.horizontal)
                    }
                }
                .padding(.top)
                .searchable(text: $searchText, prompt: "search...")
            }
            
            .navigationTitle(Text("Explore"))
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    SearchView()
}
