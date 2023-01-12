//
//  Dialog.swift
//  cars conneted
//
//  Created by Sohaib Sajjad on 11/01/2023.
//

import SwiftUI

struct Dialog<DialogContent : View> : View {
    
    let cancelable : Bool
    @Binding var isShowing : Bool
    @ViewBuilder let dialogContent : DialogContent
    
    var body: some View {
        
        Rectangle()
            .foregroundColor(Color.black.opacity(0.6))
            .onTapGesture(perform: {
                if(self.cancelable && self.isShowing){
                    isShowing.toggle()
                }
            })
        
        dialogContent
        
        
    }
}
