//
//  AddEmailView.swift
//  Instagramtutorial
//
//  Created by Fayzul Kobir Badal on 7/9/25.
//

import SwiftUI

struct AddEmailView: View {
    
    @State private var email: String = ""
    @Environment(\.dismiss) var dismiss
    
    
    var body: some View {
        VStack(spacing: 12){
            Text("Add your Email")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top)
            
            Text("You'll use this email to sign in your account")
                .font(.footnote)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)
            
            
            TextField("Email", text: $email)
                .autocapitalization(.none)
                .modifier(IGTextFileModifier())
            
            
            NavigationLink {
                CreateUsernameView()
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
        AddEmailView()
    }
}
