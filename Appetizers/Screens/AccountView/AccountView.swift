//
//  AccountView.swift
//  Appetizers
//
//  Created by Ahmet Bostancıklıoğlu on 21.11.2024.
//

import SwiftUI

struct AccountView: View {
    
    @ObservedObject var viewModel = AccountViewModel()
    @FocusState private var focusedTextField: FormTextField?
    
    enum FormTextField {
        case firstName, lastName, email
    }
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Personal Info")) {
                    TextField("First Name",
                              text: $viewModel.user.firstName)
                    .focused($focusedTextField, equals: .firstName)
                    .onSubmit {
                        focusedTextField = .lastName
                    }
                    .submitLabel(.next)
                    
                    TextField("Last Name",
                              text: $viewModel.user.lastName)
                    .focused($focusedTextField, equals: .lastName)
                    .onSubmit {
                        focusedTextField = .email
                    }
                    .submitLabel(.next)
                    
                    TextField("Email Name",
                              text: $viewModel.user.email)
                    .focused($focusedTextField, equals: .email)
                    .keyboardType(.emailAddress)
                    .autocapitalization(.none)
                    .onSubmit {
                        focusedTextField = nil
                    }
                    .submitLabel(.continue)
                    
                    DatePicker("Birthday",
                               selection: $viewModel.user.birthdate,
                               in: Date().oneHundredThenYearsAgo...Date().eighteenYearsAgo,
                               displayedComponents: .date)
                    
                    Button {
                        viewModel.saveChanges()
                    } label: {
                        Text("Save Changes")
                    }
                }
                
                Section {
                    Toggle("Extra Napkins",
                           isOn: $viewModel.user.extraNapkins)
                    Toggle("Frequent Refills",
                           isOn: $viewModel.user.frequentRefills)
                } header: {
                    Text("Requests")
                }
                .toggleStyle(SwitchToggleStyle(tint: .brandPrimary))
                
            }
            .navigationTitle("💁 Account")
            .formStyle(.grouped)
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Button("Dismiss") {
                        focusedTextField = nil
                    }
                }
            }
        }
        .onAppear {
            viewModel.retrieveUser()
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title,
                      message: alertItem.message,
                      dismissButton: alertItem.dismissButton)
        }
    }
}

#Preview {
    AccountView()
}
