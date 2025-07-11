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
                    ForEach(User.MOCK_USERS){user in
                        HStack{
                            Image(user.profileImageUrl ?? "")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 40, height: 40)
                                .clipShape(Circle())
                            
                            VStack(alignment: .leading){
                                Text(user.username)
                                    .fontWeight(.semibold)
                                
                                if let fullName = user.fullName{
                                    Text(fullName)
                                }
                            }
                            .font(.footnote)
                            Spacer()
                        }
                        .padding(.horizontal)
                        .foregroundColor(.black)
                      
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
