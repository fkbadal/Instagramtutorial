//
//  LoginView.swift
//  Instagramtutorial
//
//  Created by Fayzul Kobir Badal on 7/8/25.
//

import SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        NavigationStack {
            Spacer(minLength: 0)
            //login image
        VStack {
            Image("instagram-logo-png")
                .resizable()
                .frame(width: 220, height: 100)
                .scaledToFit( )
            }
            
            //text Fields
            VStack {
                TextField("Enter your email", text: $email)
                    .autocapitalization(.none)
                    .modifier(IGTextFileModifier())
                    
                SecureField("Enter your password", text: $password)
                    .modifier(IGTextFileModifier())
            }
            
            Button{
                print("Show forgot password")
            }label: {
                Text("Forgot password?")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(.top)
                    .padding(.trailing, 28)
            }
            .frame(maxWidth: .infinity, alignment: .trailing)
            
            Button {
                print("Login")
            }label: {
                Text("Login")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: 360, height: 44)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            .padding(.vertical)
            
            HStack{
                Rectangle()
                    .frame(width: (UIScreen.main.bounds.width / 2   ) - 40, height: 0.5)
                Text("OR")
                Rectangle()
                    .frame(width: (UIScreen.main.bounds.width / 2   ) - 40, height: 0.5)
            }
            .foregroundColor(.gray)
            HStack{
                Image("facebook-logo-png")
                    .resizable()
                    .frame(width: 30, height: 30)
                
                Text("Continue with Facebook")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(Color(.systemBlue))
            }
            .padding(.top, 8)
            
            Spacer()
            
            Divider()
            
            NavigationLink{
                AddEmailView()
                    .navigationBarBackButtonHidden(true)
            }label: {
                HStack(spacing: 3){
                    Text("Don't have an account?")
                    
                    Text("Sign Up")
                        .fontWeight(.semibold)
                }
                .font(.footnote)
            }
            .padding(.vertical, 16)
        }
    }
}

#Preview {
    NavigationStack{
        LoginView()
    }
}
