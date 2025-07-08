//
//  FeedCell.swift
//  Instagramtutorial
//
//  Created by Fayzul Kobir Badal on 7/7/25.
//

import SwiftUI

struct FeedCell: View {
    var body: some View {
        VStack{
            //image + username
            HStack{
                Image("batman-2")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                
                Text("batman")
                    .font(.footnote)
                    .fontWeight(.semibold)
                Spacer()
            }
            
            .padding(.leading, 8)
                //post image
            Image("batman-2")
                .resizable()
                .scaledToFill()
                .frame(height: UIScreen.main.bounds.width*5/4)
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
             Text("23 Likes")
                .fontWeight(.semibold)
                .font(.footnote)
                .padding(.leading, 10)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.top, 1)
           // caption label
            HStack{
                Text("batman").fontWeight(.semibold) +
                Text("This is some caption for now")
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
    FeedCell()
}
