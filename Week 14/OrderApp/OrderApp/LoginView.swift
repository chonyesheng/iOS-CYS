//
//  LoginView.swift
//  OrderApp
//
//  Created by labuser on 12/02/2025.
//

import SwiftUI

struct LoginView: View {
    @Binding var isLoggedIn: Bool
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var errorMessage: String = "Forgot Password?"
    
    var body: some View {
        NavigationView {
                VStack {
                    
                    Image("User")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150, height: 150)
                        .padding(.top, 40)
                    
                    Text("Login")
                        .font(.largeTitle)
                        .padding()
                    
                    TextField("Username", text: $username)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                    
                    SecureField("Password", text: $password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                    
                    if !errorMessage.isEmpty {
                        Text(errorMessage)
                            .foregroundColor(.red)
                            .padding()
                    }
                    
                    Button(action: {
                        login()
                    }) {
                        Text("Login")
                            .font(.title2)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                    }
                    .padding()
                    
                    Spacer()
                }
                .padding()
            }
        }
        
        private func login() {
            // Replace with actual authentication logic
            if username == "Ys" && password == "1234567" {
                isLoggedIn = true
                errorMessage = "Login Successfully"
            } else {
                errorMessage = "Invalid username or password"
            }
        }
    }


