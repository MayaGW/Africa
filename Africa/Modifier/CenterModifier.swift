//
//  CenterModifier.swift
//  Africa
//
//  Created by Maya Ghamloush on 27/02/2024.
//
 
import SwiftUI

struct CenterModifier: ViewModifier{
    func body(content: Content) -> some View {
        HStack{
            Spacer()
            content
            Spacer()
        }
    }
}
