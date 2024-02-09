//
//  AuthenticationView.swift
//  Deanery
//
//  Created by Владислав Пономаренко on 08.02.2024.
//

import SwiftUI

struct AuthenticationView: View {
    @EnvironmentObject var viewModel: AuthenticationViewModel

    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Text("Login")
                    .fontWeight(.bold)
                    .font(.system(size: 40))
                    .padding(.bottom, 40)
                
                TextField("Username", text: $viewModel.username)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal, 60)
                    .keyboardType(.asciiCapable)
                    .autocapitalization(.none)
                
                SecureField("Password", text: $viewModel.password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal, 60)
                    .keyboardType(.asciiCapable)
                    .autocapitalization(.none)
                Button(action: {
                                    viewModel.authenticateUser()
                                }) {
                                    Text("Submit")
                                        .frame(minWidth: 0, maxWidth: .infinity)
                                        .frame(height: 44)
                                        .foregroundColor(.white)
                                        .font(.system(size: 18, weight: .bold))
                                        .background(Color.blue)
                                        .cornerRadius(10)
                                }
                                .padding(.horizontal, 60)
                            .navigationDestination(isPresented: $viewModel.isAuthenticated) {
                                TablesView()
                            }
            }
        }
    }
}


#Preview {
    AuthenticationView().environmentObject(AuthenticationViewModel())
}
