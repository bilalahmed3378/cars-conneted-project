//
//  Proximity Setting screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 28/07/2022.
//

import SwiftUI

struct Proximity_Setting_screen: View {
    var body: some View {
        VStack{
            HStack{
                Button(action: {}, label: {
                    
                    Image("Icons-2")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                })
               
                
                Spacer()
                
                Text("Transaction")
                    .font(.title)
                   
                
                Spacer()
               
               }
            .padding()
            .padding(.leading,-10)
            ScrollView(.vertical, showsIndicators: false){
                Group{
                    
                HStack{
                    VStack(alignment: .leading){
                    Text("Set your Proximity")
                        .font(.title)
                        .overlay((LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                        .mask( Text("Set your Proximity")
                            .font(.title))
                        .padding(.bottom,5)
                        
                        Text("rem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nibh eget bibendum nibh. Malesuada eget faucibus arcu turpis lectus. Vulputate sociis et.")
                            

                    }
                    
                     Spacer()
                        
                }
                .padding(.bottom)
                .padding(.top)
                
                HStack{
                    Text("Status (Online)")
                    Spacer()
                  
                }
                
                Image("Line 6")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 377, height: 1)
                    .padding(.bottom)
                    .padding(.top)
                
                HStack{
                    Text("Select who can view your profile?")
                    Spacer()
                  
                }.padding(.bottom,10)
                
                HStack{
                    Image("clarity_world-solid")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                    
                    Text("Public")
                    
                    Spacer()
                    
                    Image("Group 7435")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                }.padding(.bottom,10)
                
                HStack{
                    Image("material-symbols_private-connectivity")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                    
                    Text("Private")
                        .foregroundColor(.gray)
                    
                    Spacer()
                    
                    Image("Group 2-1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                }
                }
                Image("Line 6")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 377, height: 1)
                    .padding(.bottom)
                    .padding(.top)
                Group{
                HStack{
                    Text("Select who can see you online?")
                    Spacer()
                  
                }.padding(.bottom,10)
                
                HStack{
                    Image("clarity_world-solid")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                    
                    Text("Public")
                    
                    Spacer()
                    
                    Image("Group 7435")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                }
                .padding(.bottom,10)
                
                HStack{
                    Image("material-symbols_private-connectivity")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                    
                    Text("Private")
                        .foregroundColor(.gray)
                    
                    Spacer()
                    
                    Image("Group 2-1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                }
                
                Image("Line 6")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 377, height: 1)
                    .padding(.bottom)
                    .padding(.top)
                }
                Group{
                HStack{
                    Text("Change Radius of your Status")
                    Spacer()
                  
                }.padding(.bottom,10)
                
                HStack{
                    Image("clarity_world-solid")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                    
                    Text("Public")
                    
                    Spacer()
                    
                    Image("Group 7435")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                }
                .padding(.bottom,10)
                }
                
                HStack{
                    Image("3 User")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                  
                    Text("Only friends")
                        .foregroundColor(.gray)
                    
                    Spacer()
                    
                    Image("Group 2-1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                }
                
                HStack{
                    Image("material-symbols_private-connectivity")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                  
                    Text("Private")
                        .foregroundColor(.gray)
                    
                    Spacer()
                    
                    Image("Group 2-1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                }
                
            }
          
           
        }.padding()
    }
}

struct Proximity_Setting_screen_Previews: PreviewProvider {
    static var previews: some View {
        Proximity_Setting_screen()
    }
}
