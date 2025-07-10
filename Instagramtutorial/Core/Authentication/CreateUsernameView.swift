//
//  CreateUsernameView.swift
//  Instagramtutorial
//
//  Created by Fayzul Kobir Badal on 7/9/25.
//

import SwiftUI

struct CreateUsernameView: View {
    
    @State private var username: String = ""
    @Environment(\.dismiss) var dismiss

    var body: some View {
        VStack(spacing: 12){
            Text("Create username")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top)
            
            Text("You'll use this username to sign in your account")
                .font(.footnote)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)
            
            
            TextField("username", text: $username)
                .autocapitalization(.none)
                .modifier(IGTextFileModifier())
            
            
            NavigationLink {
                CreatePasswordView()
                    .navigationBarBackButtonHidden(true)
            }label: {
                Text("Next")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: 360, height: 44)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            .padding(.vertical)
            
            Spacer()
        }
        .toolbar{
            ToolbarItem(placement: .navigationBarLeading){
                Image(systemName: "chevron.left")
                    .imageScale(.large)
                    .onTapGesture {
                        dismiss()
                }
            }
        }
    }
}
#Preview {
    NavigationStack{
        CreateUsernameView()
    }
}
