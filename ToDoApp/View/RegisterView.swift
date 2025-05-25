//
//  RegisterView.swift
//  ToDoApp
//
//  Created by 呂旻叡 on 2025/5/24.
//

import SwiftUI

struct RegisterView: View {
    
    @StateObject var viewModel = RegisterViewViewModel()
    
    var body: some View {
        VStack{
            //Header
            HeaderView(
                title:"Register",
                subtitle: "Start organizing todos",
                angle: -15,
                background: .yellow)
            
            Form{
                
                if !viewModel.errorMessage.isEmpty{
                    Text(viewModel.errorMessage)
                        .foregroundColor(Color.red)
                }
                
                TextField("Full Name", text: $viewModel.name).textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                
                TextField("Email Address", text: $viewModel.email).textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                
                SecureField("Password", text: $viewModel.password).textFieldStyle(DefaultTextFieldStyle())
                
                TLButton(
                    title: "Create Account",
                    background:.green
                ){
                    viewModel.register()
                }
                .padding()
            }
            .offset(y:-50)
            
            
            Spacer()
        }
    }
}

#Preview {
    RegisterView()
}
