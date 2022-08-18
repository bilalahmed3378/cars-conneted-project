//
//  orders.swift
//  cars conneted
//
//  Created by Sohaib Sajjad on 27/07/2022.
//

import SwiftUI

struct orders: View {
    var body: some View {
        
        VStack{
            
            //top bar
            orders_top_bar(topLeftIcon: "side menu icon white", topRighttIcon: "dottedIcons", title: "Orders")
            
            HStack{
                
                Button(action:{}){
                    
                    Text("Buying")
                        .foregroundColor(.white)
                        .padding(12)
                        .padding(.leading,10)
                        .padding(.trailing,10)
                        .background(AppColors.redGradientColor1)
                        .cornerRadius(6)
                    
                    
                }
                
                Button(action:{}){
                    
                    Text("Selling")
                        .foregroundColor(.black.opacity(0.8))
                        .padding(12)
                        .padding(.leading,10)
                        .padding(.trailing,10)
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(6)
                    
                    
                }
                
            }.padding(.top,10)
            
            ScrollView(.vertical,showsIndicators: false){
                
                VStack{
                    
                    HStack{
                        
                        Text("All")
                        
                        Spacer()
                        
                        Text("Pending")
                        
                        Spacer()
                        
                        Text("Completed")
                        
                        Spacer()
                        
                        Text("Cancelled")
                        
                    }.foregroundColor(.gray)
                        .padding(.top,20)
                    
                    
                    
                    //completed
                    orders_card(status:1)
                        .padding(.top,20)
                    
                    //completed
                    orders_card(status:1)
                        .padding(.top,20)
                    
                    //cancelled
                    orders_card(status:0)
                        .padding(.top,20)
                    
                    //in progress
                    orders_card(status:2)
                        .padding(.top,20)
                    
                    
                }.padding(.leading,20)
                    .padding(.trailing,20)
                
            }
            
        }.edgesIgnoringSafeArea(.all)
        
        
    }
    
}




struct orders_card: View {
    
    let status : Int
    
    var body: some View {
        
        
        HStack{
            
            Image("Rectangle 4454")
                .resizable()
                .frame(width: UIScreen.widthBlockSize*18, height: 70)
            
            VStack(alignment:.leading){
                
                Text("Engine Valve")
                
                Spacer()
                
                Text("Engine Parts")
                    .foregroundColor(.gray)
                
                Spacer()
                
                Text("Qty 1")
                    .foregroundColor(.gray)
                
                
            }
            
            Spacer()
            
            VStack{
                
                Text("$50")
                
                Spacer()
                
                //cancelled
                if(self.status==0){
                    
                    Text("Cancelled")
                        .foregroundColor(.red)
                        .padding(8)
                        .padding(.leading,5)
                        .padding(.trailing,5)
                        .background(AppColors.redGradientColor1.opacity(0.2))
                        .cornerRadius(50)
                    
                    
                }
                
                //completed
                if(self.status==1){
                    
                    Text("Completed")
                        .foregroundColor(.green)
                        .padding(8)
                        .padding(.leading,5)
                        .padding(.trailing,5)
                        .background(Color.green.opacity(0.2))
                        .cornerRadius(50)
                    
                    
                }
                
                //in progress
                if(self.status==2){
                    
                    Text("In Progress")
                        .foregroundColor(.red)
                        .padding(8)
                        .padding(.leading,5)
                        .padding(.trailing,5)
                        .background(Color.orange.opacity(0.2))
                        .cornerRadius(50)
                    
                    
                }
                
                
                //new
                if(self.status==3){
                    
                    Text("New!")
                        .foregroundColor(.blue)
                        .padding(8)
                        .padding(.leading,5)
                        .padding(.trailing,5)
                        .background(Color.blue.opacity(0.2))
                        .cornerRadius(50)
                    
                    
                }
                
                
                
            }
            
        }.frame(height: 70)
            .padding()
            .overlay(RoundedRectangle(cornerRadius: 10).strokeBorder(Color.gray, lineWidth: 1))
        
        
    }
    
}

struct orders_top_bar: View {
    
    var topLeftIcon : String
    var topRighttIcon : String
    var title : String
    
    
    var body: some View {
        
        ZStack{
            
            Image("clubsTopBar")
                .resizable()
                .frame(width: UIScreen.screenWidth, height: UIScreen.heightBlockSize*15)
            
            VStack{
                
                HStack{
                    
                    
                    
                    if(topLeftIcon == "chevron.backward"){
                        
                        Image(systemName:topLeftIcon)
                            .foregroundColor(.white)
                        
                    }
                    
                    else{
                        
                        Image(topLeftIcon)
                            .resizable()
                            .frame(width: UIScreen.widthBlockSize*10, height: UIScreen.heightBlockSize*3)
                        
                    }
                    
                    
                    Spacer()
                    
                    Text(title)
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    
                    Spacer()
                    
                    Image(topRighttIcon)
                        .resizable()
                        .frame(width: UIScreen.widthBlockSize*8, height: UIScreen.heightBlockSize*3)
                        .foregroundColor(.white)
                    
                }
                
                
                
                
            }
            .padding(.leading,20)
            .padding(.trailing,20)
            .padding(.top,20)
            
            
        }.frame(width: UIScreen.screenWidth, height: UIScreen.heightBlockSize*15)
        
        
        
    }
    
}

struct orders_Previews: PreviewProvider {
    static var previews: some View {
        orders()
    }
}
