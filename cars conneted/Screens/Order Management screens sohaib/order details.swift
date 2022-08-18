//
//  order details.swift
//  cars conneted
//
//  Created by Sohaib Sajjad on 29/07/2022.
//

import SwiftUI

struct order_details: View {
    var body: some View {
        VStack(alignment: .leading){
            
            //top bar
            orders_top_bar(topLeftIcon: "chevron.backward", topRighttIcon: "dottedIcons", title: "View Details")
            
            VStack(alignment: .leading){
                
                orders_card(status: 2)
                
                Text("Order Status")
                    .fontWeight(.medium)
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
                
                
            }.padding(.leading,20)
                .padding(.trailing,20)
            
        }.edgesIgnoringSafeArea(.all)
        
    }
}



struct order_details_card: View {
    
    var checkmark : Int
    
    var status: String
    
    var time : Int
    
    var body: some View {
        
        
        HStack(alignment: .top){
            
            if(self.checkmark==1){
                
                Image(systemName: "checkmark")
                    .foregroundColor(.white)
                    .padding(5)
                    .background(Color.green)
                    .cornerRadius(100)
                
            }
            
            if(self.checkmark==0){
                
                
                Circle().fill(.gray.opacity(0.4))
                    .frame(width: 27, height: 27)
                
            }
            
            VStack(alignment: .leading){
                
                
                Text(status)
                
                Spacer()
                
                HStack{
                    
                    Image(systemName: "clock.arrow.circlepath")
                    
                    Text("\(time) minutes ago")
                    
                }.foregroundColor(.gray)
                
                Spacer()
                
                Divider()
                    .background(Color.gray)
                
            }.padding(.top,10)
            
        }.frame( height: 100)
        
        
        
        
    }
    
}

struct order_details_Previews: PreviewProvider {
    static var previews: some View {
        order_details()
    }
}
