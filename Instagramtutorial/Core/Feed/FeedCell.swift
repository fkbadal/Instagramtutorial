//
//  FeedCell.swift
//  Instagramtutorial
//
//  Created by Fayzul Kobir Badal on 7/7/25.
//

import SwiftUI

struct FeedCell: View {
    let post: Post
    var body: some View {
        VStack{
            //image + username
            HStack{
               if let user = post.user{
                   Image(user.profileImageUrl ?? "")
                       .resizable()
                       .scaledToFill()
                       .frame(width: 40, height: 40)
                       .clipShape(Circle())
                   
                   Text(user.username)
                       .font(.footnote)
                       .fontWeight(.semibold)
                   Spacer()
                }
            }
            
            .padding(.leading, 8)
                //post image
            Image(post.imageUrl)
                .resizable()
                .scaledToFill()
                //UIScreen.main.bounds.width*5/4)
                .clipShape(Rectangle())
                
                //action button
                HStack{
                    Button {
                        print("Like post")
                    }label: {
                        Image(systemName: "heart")
                            .imageScale(.large)
                    }
                    Button {
                        print("Comment on post")
                    }label: {
                        Image(systemName: "bubble.right")
                            .imageScale(.large)
                    }
                    Button {
                        print("Share post")
                    }label: {
                        Image(systemName: "paperplane")
                            .imageScale(.large)
                    }
                    Spacer()
            }
                .padding(.leading, 8)
                .padding(.top, 4)
                .foregroundColor(.primary)
            
            // like label
            Text("\(post.likes)likes")
                .fontWeight(.semibold)
                .font(.footnote)
                .padding(.leading, 10)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.top, 1)
           // caption label
            HStack{
                Text("\(post.user?.username ?? "")").fontWeight(.semibold) +
                Text(post.caption)
            }
            .font(.footnote)
            .padding(.leading, 10)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.top, 1)
            
            Text("6h ago")
            .font(.footnote)
            .padding(.leading, 10)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.top, 1)
            .foregroundColor(.secondary)
        }
    }
}

#Preview {
    FeedCell(post: Post.MOCK_POSTS[1])
}
