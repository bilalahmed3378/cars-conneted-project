//
//  Follow Requests Screens.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 28/07/2022.
//

import SwiftUI

struct Follow_Requests_Screens: View {
    var body: some View {
        VStack{
            VStack{
                
                // top bar
                HStack{
                    Button(action: {}, label: {
                        Image("back icon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 35, height: 35)
                            .padding(.leading,-10)
                    })
                   
                    
                  Spacer()
                    
                    Text("Follow Request")
                        .font(.title)
                        .foregroundColor(.white)
                    
                    Spacer()
                    
                    Button(action: {}, label: {
                        Image("doted icons-1")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 35, height: 35)
                    })
                  
                    
                    
                }.padding(.leading,24)
                    .padding(.trailing,24)
                    .padding(.top,20)
                
            }  .padding(.top,40)
                .padding(.bottom,30)
                .background(
                    Image("home screen background")
                    .resizable())
            
            ScrollView(.vertical, showsIndicators: false){
                HStack{
                    Text("7 request")
                        .foregroundColor(.gray)
                    Spacer()
                }
                .padding()
                
                LazyVStack{
                    ForEach(0...4 , id: \.self){index in
                        followRequest()
                    }
                }
                
            }
          
        
            
        
            Spacer()
        }
        .edgesIgnoringSafeArea(.top)
           
        
        
    }
}

struct Follow_Requests_Screens_Previews: PreviewProvider {
    static var previews: some View {
        Follow_Requests_Screens()
    }
}

struct followRequest: View {
    
    var body : some View {
        
        HStack{
            Image("unsplash_X6Uj51n5CE8")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 60, height: 60)
            
            VStack(alignment: .leading){
                Text("Camero 123")
                    .padding(.bottom,2)
                
                Text("request to follow you")
                    .foregroundColor(.gray)
                    .font(.caption)
                
            }
            Spacer()
            Button(action: {}, label: {
                Text("Delete")
                    .foregroundColor(AppColors.redGradientColor1)
                    .frame(width: 75, height: 40)
                    .background(RoundedRectangle(cornerRadius: 10).fill(.gray).opacity(0.3))
            })
           
            Button(action: {}, label: {
                Text("Confirm")
                    .foregroundColor(.white)
                    .frame(width: 75, height: 40)
                    .background(RoundedRectangle(cornerRadius: 10).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
            })
            
        }.padding(.leading)
            .padding(.trailing)
          
        
        Image("Line 6")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 377, height: 1)
            .padding(.bottom)
            .padding(.top)
    }
}
