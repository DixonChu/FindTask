//
//  AboutView.swift
//  FindTask
//
//  Created by Dixon Chu on 01/03/2022.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 0){
                Text("Version 1.0 @FindTask")
                .fontWeight(.medium)
                .foregroundColor(.secondary)
        }
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
