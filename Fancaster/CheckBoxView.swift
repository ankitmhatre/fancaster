//
//  CheckBoxView.swift
//  Fancaster
//
//  Created by Ankit Mhatre on 3/18/23.
//

import SwiftUI

struct CheckBoxView: View {
    @Binding var checked: Bool
    @Binding var title: String
    
    
    var body: some View {
        HStack {
            Image(systemName: checked ? "checkmark.square.fill" : "square")
                .foregroundColor(checked ? Color(UIColor.systemBlue) : Color.secondary)
                .onTapGesture {
                    self.checked.toggle()
                }
            
            Text(self.title)
        }
        
    }
    
}

struct CheckBoxView_Previews: PreviewProvider {
    struct CheckBoxViewHolder: View {
        @State var checked = false
        @State var title = "Channel"
        var body: some View {
            CheckBoxView(checked: $checked, title: $title)
        }
    }

    static var previews: some View {
        CheckBoxViewHolder()
    }
}
