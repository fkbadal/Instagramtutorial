//
//  PeofileView.swift
//  Instagramtutorial
//
//  Created by Fayzul Kobir Badal on 7/2/25.
//

import SwiftUI

struct ProfileView: View {
    let user: User
    
    let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1)
    ]
    
     var posts: [Post] {
         return Post.MOCK_POSTS.filter({ $0.user?.username == user.username })
    }
    var body: some View {
            ScrollView{
                //header
                VStack(spacing: 10){
                    //pic and states
                    HStack{
                        Image(user.profileImageUrl ?? "")
                            .resizable()
                            .scaledToFit( )
                            .frame(width: 80, height: 80)
                                .clipShape(Circle())
                        
                        Spacer()
                        
                        HStack(spacing: 8){
                            UserStatView(value: 3, title: "Posts")
                            UserStatView(value: 70, title: "Followers")
                            UserStatView(value: 2, title: "following")
                        }
                    }
                    .padding(.horizontal)
                    .padding(.bottom, 4)
                    //name and vio
                    VStack(alignment: .leading, spacing: 4) {
                        if let fullname = user.fullName{
                            Text(fullname)
                                .font(.footnote)
                                .fontWeight(.semibold)
                                
                        }
                        
                        if let bio = user.bio{
                            Text(bio)
                                .font(.footnote)
                        }
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    //action button
                    Button {
                        
                    } label: {
                        Text("Edit Profile")
                            .font(.headline)
                            .fontWeight(.semibold)
                            .frame(width: 360, height:32)
                            .foregroundColor(.black)
                            .overlay(RoundedRectangle(cornerRadius:6).stroke(Color.gray,lineWidth: 1))
                    }
                    Divider()
                }
                //post grid view
                LazyVGrid(columns: gridItems, spacing: 1){
                    ForEach(posts){ post in
                        Image(post.imageUrl)
                            .resizable()
                            .scaledToFit()
                        
                    }
                }
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline) 
    }
 }

#Preview {
    ProfileView(user: User.MOCK_USERS[1])
}


