//
//  Toast.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 13/12/2022.
//

import Foundation
import SwiftUI

struct Toast: View {
    
    @Binding var isShowing : Bool
    let message : String
    
    var body: some View {
        
        VStack{
            Spacer()
            VStack(alignment:.leading){
               
                
                HStack{
                    
                    Image("94339-edited-yelly-face 1")
                        .resizable()
                        .frame(width: 40, height: 40, alignment: .center)
                    
                    Spacer()
                  
                    
                    Image(systemName: "xmark.circle.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 20, height: 20,alignment:.center)
                        .foregroundColor(.red)
                        .onTapGesture(perform: {
                            isShowing = false
                        })
                }
                
                Text(self.message)
                    .font(AppFonts.medium_14)
                    .foregroundColor(.black)
                    .padding(.bottom,10)
                    .padding(.top , 5)
            }
            .padding(10)
            .background(RoundedRectangle(cornerRadius: 0).fill(.gray))
            .cornerRadius(10.0)
            .padding(.bottom , 20)
            .padding(.leading , 20)
            .padding(.trailing , 20)
            .shadow(radius: 10,  y: 10)
        }
        .onAppear(perform: {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                if(self.isShowing){
                    isShowing.toggle()
                }
            }
        })
    }
    
}
