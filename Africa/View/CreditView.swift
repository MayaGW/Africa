//
//  CreditView.swift
//  Africa
//
//  Created by Maya Ghamloush on 27/02/2024.
//

import SwiftUI

struct CreditView: View {
    var body: some View {
        VStack {
            Image(.compass)
                .resizable()
                .scaledToFit()
                .frame(width: 128, height: 128, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            Text("""
            Copyright © Maya Ghamloush
            All right reserved
            Better ♡♡ Apps Less Code
            """)
            .font(.footnote)
        .multilineTextAlignment(.center)
        }//:VSTACK
        .padding()
        .opacity(0.4)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    CreditView()
        .padding()
}
