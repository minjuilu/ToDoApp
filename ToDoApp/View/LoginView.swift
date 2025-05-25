//
//  LoginView.swift
//  ToDoApp
//
//  Created by 呂旻叡 on 2025/5/24.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModel =  LoginViewViewModel()
    
    var body: some View {
        NavigationView{
            VStack{
                //Header
                HeaderView(
                    title:"To Do List",
                    subtitle: "Get things Done",
                    angle: 15,
                    background: .pink)
                
                //Login Form
                Form{
                    
                    if !viewModel.errorMessage.isEmpty{
                        Text(viewModel.errorMessage)
                            .foregroundColor(Color.red)
                    }
                    
                    TextField("Email Adderss", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                        .autocorrectionDisabled()
                    
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    TLButton(title: "Log In", background: .blue) {
                        viewModel.login { success in
                            if success {
                                
                            } else {
            
                            }
                        }
                    }
                    .padding()
                }
                
                //Create Account
                VStack{
                    Text("New around here?")
                    
                    NavigationLink("Create an Account", destination: RegisterView())
                }
                .padding(.bottom, 50)
                
                Spacer()
            }
        }
    }
}

#Preview {
    LoginView()
}
