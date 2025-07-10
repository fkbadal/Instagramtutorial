//
//  CreatePasswordView.swift
//  Instagramtutorial
//
//  Created by Fayzul Kobir Badal on 7/9/25.
//

import SwiftUI

struct CreatePasswordView: View {
    
        @State private var password: String = ""
        @Environment(\.dismiss) var dismiss
        
        var body: some View {
            VStack(spacing: 12){
                Text("Create password")
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding(.top)
                
                Text("Your password must be at leat 6 characters long")
                    .font(.footnote)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 24)
                
                
                SecureField("password", text: $password)
                    .autocapitalization(.none)
                    .modifier(IGTextFileModifier())
                    .padding(.top)
                
                
                NavigationLink {
                   CompleteSignUpView()
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
        CreatePasswordView()
    }
}
