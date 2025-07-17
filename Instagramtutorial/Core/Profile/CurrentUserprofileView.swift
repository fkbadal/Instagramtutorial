//
//  CurrentUserprofileView.swift
//  Instagramtutorial
//
//  Created by Fayzul Kobir Badal on 7/12/25.
//

import SwiftUI

struct CurrentUserprofileView: View {
    
    let user: User
    
    var posts: [Post] {
        return Post.MOCK_POSTS.filter({ $0.user?.username == user.username })
    }
    var body: some View {
        NavigationStack{
            ScrollView{
                //header
                VStack(spacing: 10){
                    //pic and states
                    HStack{
                        Image("black-panther-1")
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
                        Text("Chedweak Broazman")
                            .font(.footnote)
                            .fontWeight(.semibold)
                        
                        Text("Wokanda Forever")
                            .font(.footnote)
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
                PostGridView(posts: posts)
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button{
                    }label: {
                        Image(systemName: "line.3.horizontal")
                            .foregroundColor(.black)
                    }
                    
                }
            }

        }
    }
}

#Preview {
    CurrentUserprofileView(user: User.MOCK_USERS[1])
}
