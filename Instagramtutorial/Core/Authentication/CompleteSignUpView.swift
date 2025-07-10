//
//  CompleteSignUpView.swift
//  Instagramtutorial
//
//  Created by Fayzul Kobir Badal on 7/9/25.
//

import SwiftUI

struct CompleteSignUpView: View {
    

    @Environment(\.dismiss) var dismiss
    
    var body: some View {
    VStack(spacing: 12){
        Spacer()
        Text("Welcome to Instagram, fayzul.badaldeee")
            .font(.title2)
            .fontWeight(.bold)
            .padding(.top)
            .multilineTextAlignment(.center)
        
        Text("Click below to complete registration and start exploring Instagram.")
            .font(.footnote)
            .multilineTextAlignment(.center)
            .padding(.horizontal, 24)
        
        
       
        
        
        Button {
            print("Complete sign up")
        }label: {
            Text("Complete sign up")
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
        CompleteSignUpView()
    }
}
