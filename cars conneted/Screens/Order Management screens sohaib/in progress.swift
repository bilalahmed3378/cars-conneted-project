//
//  in progress.swift
//  cars conneted
//
//  Created by Sohaib Sajjad on 29/07/2022.
//

import SwiftUI

struct in_progress: View {
    var body: some View {
        
        VStack{
        
            //top bar
            orders_top_bar(topLeftIcon: "chevron.backward", topRighttIcon: "dottedIcons", title: "View Details")
        
          
            VStack{
            
            orders_card(status: 2).padding(.top,20)
            
            
            Text("Order Status")
                .padding(.top,20)
            
            
            ZStack(alignment: .topLeading){
                
                VStack{
                    
                    Spacer()
                }.frame(width: 1,height: 280)
                    .background(Color.gray)
                    .padding(.leading,12)
                
                VStack(spacing:30){
                    
                order_details_card(checkmark: 1, status: "Order Accepted" , time: 20)
                
                order_details_card(checkmark: 1, status: "Order Accepted" , time: 20)
                
                order_details_card(checkmark: 1, status: "Order Accepted" , time: 20)

                }
                    
            }.padding(.top,20)

                Spacer()
                
                Button(action: {
                    
                }){
                    
                    HStack{
                        Spacer()
                        
                        Text("Update Order Status")
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
                
            Spacer()
            
        }.edgesIgnoringSafeArea(.all)
        
    }
}

struct in_progress_Previews: PreviewProvider {
    static var previews: some View {
        in_progress()
    }
}
