//
//  orders:selling.swift
//  cars conneted
//
//  Created by Sohaib Sajjad on 29/07/2022.
//

import SwiftUI

struct orders_selling: View {
    var body: some View {
        
        VStack{

orders_top_bar(topLeftIcon: "side menu icon white", topRighttIcon: "dottedIcons", title: "Orders")
        
        HStack{
            
            Button(action:{}){
                
                Text("Buying")
                    .foregroundColor(.black.opacity(0.8))
                    .padding(12)
                    .padding(.leading,10)
                    .padding(.trailing,10)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(6)
                
                
            }
            
            Button(action:{}){
                
                Text("Selling")
                    .foregroundColor(.white)
                    .padding(12)
                    .padding(.leading,10)
                    .padding(.trailing,10)
                    .background(Color.red)

                    .cornerRadius(6)
                
                
            }
            
        }.padding(.top,20)

            ScrollView(.vertical,showsIndicators: false){
                
                
                VStack{
            
            HStack{
                
                Text("New orders")
                
                Spacer()
                
                Text("View All")
                    .foregroundColor(.gray)
                
            }.padding(.top,10).padding(.top,10)
                    
                    orders_card(status:1)

                    
                    HStack{
                        
                        Text("In Progress")
                        
                        Spacer()
                        
                        Text("View All")
                            .foregroundColor(.gray)
                        
                    }.padding(.top,10)

                    orders_card(status:2)
                    
               
                    HStack{
                        
                        Text("Cancelled orders")
                        
                        Spacer()
                        
                        Text("View All")
                            .foregroundColor(.gray)
                        
                    }.padding(.top,10)

                    orders_card(status:0)

                    HStack{
                        
                        Text("Completed orders")
                        
                        Spacer()
                        
                        Text("View All")
                            .foregroundColor(.gray)
                        
                    }.padding(.top,10)

                    orders_card(status:1)

                    
                }.padding(.leading,20)
                    .padding(.trailing,20)
            

            }
            
        }.edgesIgnoringSafeArea(.all)
        
    }
}

struct orders_selling_Previews: PreviewProvider {
    static var previews: some View {
        orders_selling()
    }
}
