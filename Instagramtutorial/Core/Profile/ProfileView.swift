//
//  PeofileView.swift
//  Instagramtutorial
//
//  Created by Fayzul Kobir Badal on 7/2/25.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack{
            //header
            VStack{
                //pic and states
                HStack{
                    
                }
                //name and vio
                VStack {
                    
                }
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
            //post grid vieu
        }
    }
}

#Preview {
    ProfileView()
}


