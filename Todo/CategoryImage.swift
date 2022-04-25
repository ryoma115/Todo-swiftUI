//
//  CategoryImage.swift
//  Todo
//
//  Created by N. Ryoma on 2022/04/25.
//

import SwiftUI

struct CategoryImage: View {
    var body: some View {
        Image(systemName: "tortoise.fill")
            .resizable()
            .scaledToFit()
            .foregroundColor(.white)
            .padding(2.0)
            .frame(width: 30, height: 30)
            .background(Color(.blue))
            .cornerRadius(6.0)
            
    }
}

struct CategoryImage_Previews: PreviewProvider {
    static var previews: some View {
        CategoryImage()
    }
}
