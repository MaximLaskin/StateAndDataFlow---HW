//
//  CharacterCounterView.swift
//  StateAndDataFlow
//
//  Created by Maxim on 26.10.2022.
//

import SwiftUI

struct CharacterCounterView: View {
    @Binding var character: String
    let successColor = Color.green // разумно здесь определить или захардкодить цвет в 17 строку?
    let unsuccessColor = Color.red

    var body: some View {
        Text("\(character.count)")
            .foregroundColor(character.count > 2 ? successColor : unsuccessColor)
        /*
         не захотел выносить логику из представления. Кажется она тут изящно вяжется на 1 свойстве character. Cразу и цвет и count))
         */
    }
}

struct CharacterCounterView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterCounterView(character: .constant("Maxim"))
    }
}

