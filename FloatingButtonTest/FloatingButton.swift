//
//  FloatingButton.swift
//  FloatingButtonTest
//
//  Created by Goorer on 2021/02/10.
//

import SwiftUI

struct FloatingButton: View {
    @State var isShowAlert = false
    var body: some View {
        HStack {
            Spacer()
            VStack {
                Spacer()
                Button(action: {
                    self.isShowAlert.toggle()
                }, label: {
                    Image(systemName: "plus")
                        .foregroundColor(.white)
                        .font(.system(size: 30))
                })
                        .frame(width: 60, height: 60)
                        .background(Color.gray)
                        .cornerRadius(30.0)
                        .shadow(color: .gray, radius: 3, x: 3, y: 3)
                        .padding([.bottom, .trailing],10)
                        .alert(isPresented:self.$isShowAlert){
                            Alert(title:Text("Floating Buttonがタップされたよ。"))
                        }
                }
        }
    }
}

struct FloatingButton_Previews: PreviewProvider {
    static var previews: some View {
        FloatingButton()
    }
}
