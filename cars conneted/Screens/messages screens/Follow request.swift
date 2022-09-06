//
//  Follow request.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 22/08/2022.
//

import SwiftUI

struct Follow_request: View {
    @Environment(\.presentationMode) var presentaionMode
    var body: some View {
        VStack{
            VStack{
                
                // top bar
                HStack{
                    Button(action: {
                        self.presentaionMode.wrappedValue.dismiss()
                    }, label: {
                        Image("back icon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 35, height: 35)
                            .padding(.leading,-10)
                    })
                   
                    
                  Spacer()
                    
                    Text("Follow Request")
                        .font(AppFonts.SemiBold_20)
                        .foregroundColor(.white)
                    
                    Spacer()
                    
                    
                  
                    
                    
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
                    Text("7 Requests")
                        .font(AppFonts.semiBold_16)
                        .foregroundColor(AppColors.redGradientColor1)
                    Spacer()
                }
                .padding()
                
                LazyVStack{
                    
                    
                  
                    ForEach(0...6 , id: \.self){index in
                        
                        followRequest()
                        
                        
                    }
                    
                  
                }
                
            }
          
        
            
        
            Spacer()
        }
        .edgesIgnoringSafeArea(.top)
        .navigationBarHidden(true)
           
        
    }
}

struct Follow_request_Previews: PreviewProvider {
    static var previews: some View {
        Follow_request()
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
                    .font(AppFonts.medium_14)
                    .padding(.bottom,2)
                
                Text("request to follow you")
                    .foregroundColor(.gray)
                    .font(AppFonts.regular_12)
                
            }
            Spacer()
            Button(action: {}, label: {
                Text("Delete")
                    .font(AppFonts.medium_12)
                    .foregroundColor(AppColors.redGradientColor1)
                    .frame(width: 75, height: 40)
                    .background(RoundedRectangle(cornerRadius: 10).fill(.gray).opacity(0.3))
            })
           
            Button(action: {}, label: {
                Text("Confirm")
                    .font(AppFonts.medium_12)
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
            .padding(.bottom,10)
            .padding(.top,10)
    }
}
