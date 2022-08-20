//
//  order completed.swift
//  cars conneted
//
//  Created by Sohaib Sajjad on 29/07/2022.
//

import SwiftUI

struct order_completed: View {
    var body: some View {
        VStack{
            
                
                Image("orderAccepted")
                    .resizable()
                    .frame(height: 300)
                    .padding(.top,100)
                
                Text("Order # 23423423 Completed")
                    .fontWeight(.medium)
                    .font(.system(size: 20))
                    .padding(.top,30)
                
                
            Spacer()
                
                Button(action: {
                    
                }){
                    
                    HStack{
                        Spacer()
                        
                        Text("Back To Orders")
                            .foregroundColor(.black)
                            .font(.system(size:14, design: .rounded))
                            .fontWeight(.medium)
                        
                        Spacer()
                    }
                    .padding(20)
                    .background(RoundedRectangle(cornerRadius: 100).strokeBorder(Color.gray, lineWidth: 1))
                    .padding(.top,13)
                    
                }
                
        }.padding(.leading,20)
            .padding(.trailing,20)
        
        
    }
}

struct order_completed_Previews: PreviewProvider {
    static var previews: some View {
        order_completed()
    }
}