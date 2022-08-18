//
//  view order.swift
//  cars conneted
//
//  Created by Sohaib Sajjad on 29/07/2022.
//

import SwiftUI

struct view_order: View {
    var body: some View {

        VStack{
            
            orders_top_bar(topLeftIcon: "chevron.backward", topRighttIcon: "dottedIcons", title: "View Details")
     
            ScrollView(.vertical,showsIndicators: false){
            
            VStack(alignment: .leading){
            
            Image("engine")
                .resizable()
                .frame( height: 350)
                .padding(.top,10)
            
            HStack{
                
                Image("Rectangle 4454")
                    .resizable()
                    .frame(width: 60, height: 60)
                
                Spacer()
                
                Image("Rectangle 4454")
                    .resizable()
                    .frame(width: 60, height: 60)

                Spacer()

                
                Image("Rectangle 4454")
                    .resizable()
                    .frame(width: 60, height: 60)

                Spacer()

                
                Image("Rectangle 4454")
                    .resizable()
                    .frame(width: 60, height: 60)
                
                Spacer()

                
                Image("Rectangle 4454")
                    .resizable()
                    .frame(width: 60, height: 60)

            }.padding(.top,20)
           
            
            HStack{
            
            Text("Engine Valve 16.5")
                
                Spacer()
                
                Text("$50")

                
            }.padding(.top,20)
            
            Text("Engine Parts")
                .foregroundColor(.gray)
                .padding(.top,10)
                
            
            Text("Qty:1")
                .foregroundColor(.gray)
                .padding(.top,10)
                
                
            
                Text("Color")
                    .padding(.top,20)
                
                    
                    Circle().fill(.red)
                        .frame(width: 40, height: 40)
                    
                Text("Select Size")
                    .padding(.top,20)

                
                Text("15\"")
                    .foregroundColor(AppColors.redGradientColor1)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 15)
                        .strokeBorder(AppColors.redGradientColor1,lineWidth: 1).background(AppColors.redGradientColor1.opacity(0.1)).cornerRadius(15))
                    .padding(.top,20)
                
                
            }.padding(.leading,20)
                    .padding(.trailing,20)
            
                
            }
            
        }.edgesIgnoringSafeArea(.all)
    }
}

struct view_order_Previews: PreviewProvider {
    static var previews: some View {
        view_order()
    }
}
