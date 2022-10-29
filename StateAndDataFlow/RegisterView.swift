//
//  RegisterView.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 31.03.2021.
//

import SwiftUI

struct RegisterView: View {
    @EnvironmentObject var user: UserManager
    @State private var name = ""
    private var characterLimit = 2

    var body: some View {
        VStack {
            HStack {
                TextField("Enter your name...", text: $name)
                    .multilineTextAlignment(.center)
                CharacterCounterView(character: $name)
                    .padding()
            }
            Button(action: registerUser) {
                Image(systemName: status() ? "checkmark.circle" : "xmark.circle")
                    .foregroundColor(status() ? .green : .red)
                Text("Ok")
            }
            .disabled(!status())
        }
        .padding()
    }
    
    private func registerUser() {
        if !name.isEmpty {
            user.name = name
            user.isRegister.toggle()
        }
    }

    private func status() -> Bool {
        name.count > characterLimit
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
