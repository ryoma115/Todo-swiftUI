//
//  CheckBox.swift
//  Todo
//
//  Created by N. Ryoma on 2022/04/25.
//

import SwiftUI

struct CheckBox<Label>: View where Label: View{
    @Binding var checked: Bool
    
    private var label: ()-> Label
    
    public init(checked: Binding<Bool>, @ViewBuilder label: @escaping ()-> Label) {
        self._checked = checked
        self.label = label
    }
    
    var body: some View {
            HStack {
                Image(systemName: checked ? "checkmark.circle" : "circle")
                    .onTapGesture {
                        self.checked.toggle()
                }
                label()
        }
    }
}

struct CheckBox_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            CheckBox(checked: .constant(true)) {
                Image(systemName: "hand.thumbsup")
            }
        }
    }
}
