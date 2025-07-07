//
//  PeofileView.swift
//  Instagramtutorial
//
//  Created by Fayzul Kobir Badal on 7/2/25.
//

import SwiftUI

struct ProfileView: View {
    let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1)
    ]
    var body: some View {
        NavigationStack {
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
                LazyVGrid(columns: gridItems, spacing: 1){
                    ForEach(0 ... 15, id:\.self){index in
                        Image("black-panther-2")
                            .resizable()
                            .scaledToFill()
                        
                    }
                }
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
    ProfileView()
}


