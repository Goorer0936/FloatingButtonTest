//
//  FloatingButton.swift
//  FloatingButtonTest
//
//  Created by Goorer on 2021/02/10.
//

import SwiftUI

struct FloatingButton: View {
    var body: some View {
        Button(action: {}, label: {
            Text("Button")
        })
    }
}

struct FloatingButton_Previews: PreviewProvider {
    static var previews: some View {
        FloatingButton()
    }
}
