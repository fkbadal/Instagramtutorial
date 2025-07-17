//
//  ProfileHeaderView.swift
//  Instagramtutorial
//
//  Created by Fayzul Kobir Badal on 7/16/25.
//

import SwiftUI

struct ProfileHeaderView: View {
    
    let user: User

    var body: some View {
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

    }
}

#Preview {
    ProfileHeaderView(user: User.MOCK_USERS[0])
}
