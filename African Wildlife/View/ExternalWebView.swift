//
//  ExternalWebView.swift
//  African Wildlife
//
//  Created by Hussain Alwazzan on 30/08/2022.
//

import SwiftUI

struct ExternalWebView: View {
    
    let animal: Animal
    
    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()
                
                Group {
                    Link(animal.name, destination: (URL(string: animal.link) ?? URL(string: "https://wiki"))!)
                 
                    
                    Image(systemName: "arrow.up.right.square")
                    
                }
                .foregroundColor(.accentColor)
            } //: HSTACK
        } //: GROUPBOX
    }
}

struct ExternalWebView_Previews: PreviewProvider {
    
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        ExternalWebView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
