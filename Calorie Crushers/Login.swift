//
//  Login.swift
//  Calorie Crushers
//
//  Created by Aman Kumar on 10/17/24.
//

import SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""

    var body: some View {
        VStack {
            Text("Welcome to Calorie Crushers")
                .font(.largeTitle)
                .bold()
                .padding()

            HStack {
                Button(action: {
                    // Google login logic
                }) {
                    HStack {
                        Image(systemName: "globe")
                        Text("Login with Google")
                    }
                    .padding()
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(8)
                }

                Button(action: {
                    // Apple login logic
                }) {
                    HStack {
                        Image(systemName: "applelogo")
                        Text("Login with Apple")
                    }
                    .padding()
                    .background(Color.black)
                    .foregroundColor(.white)
                    .cornerRadius(8)
                }
            }
            .padding()

            Text("or continue with email")
                .padding(.top)

            TextField("Email Address", text: $email)
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(8)

            SecureField("Password", text: $password)
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(8)

            Button(action: {
                // Login logic
            }) {
                Text("Login")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            .padding(.top)
        }
        .padding()
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
