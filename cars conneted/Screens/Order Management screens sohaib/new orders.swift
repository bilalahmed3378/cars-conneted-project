//
//  cancelled orders.swift
//  cars conneted
//
//  Created by Sohaib Sajjad on 29/07/2022.
//

import SwiftUI

struct new_orders: View {
    var body: some View {
        
        VStack{
            
        orders_top_bar(topLeftIcon: "chevron.backward", topRighttIcon: "dottedIcons", title: "New Orders")
            

            ScrollView(.vertical,showsIndicators: false){
                
                VStack(spacing:20){
                    
                    
                    orders_card(status:3)
                    orders_card(status:3)
                    orders_card(status:3)
                    orders_card(status:3)
                    orders_card(status:3)

                    
                    
                }.padding(.top,20)
                    .padding(.leading,20)
                    .padding(.trailing,20)
                
                
            }
            
            
        }.edgesIgnoringSafeArea(.all)
        
    }
}

struct new_orders_Previews: PreviewProvider {
    static var previews: some View {
        new_orders()
    }
}
