//
//  HeadingView.swift
//  African Wildlife
//
//  Created by Hussain Alwazzan on 29/08/2022.
//

import SwiftUI

struct HeadingView: View {
    // MARK: - PROPERTIES
    
    var headingImage: String
    var headingText: String
    
    //MARK: -
    var body: some View {
        HStack {
            Image(systemName: headingImage)
                .foregroundColor(.accentColor)
                .imageScale(.large)
            
            Text(headingText)
                .font(.title3)
                .fontWeight(.bold)
        } //: HSTACK
        .padding(.vertical)
    }
}

struct HeadingView_Previews: PreviewProvider {
    static var previews: some View {
        HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in Pictures")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
