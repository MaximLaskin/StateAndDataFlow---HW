//
//  BigButtonView.swift
//  StateAndDataFlow
//
//  Created by Maxim on 26.10.2022.
//

import SwiftUI

struct BigButtonView: View {
    @ObservedObject var timer: TimeCounter

    let color: Color
    let text: String
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            Text(text)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(width: 200, height: 60)
        .background(color)
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.black, lineWidth: 4)
                .shadow(radius: 10)
        )
        .shadow(radius: 10)
    }
}




