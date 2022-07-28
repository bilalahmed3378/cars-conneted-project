//
//  Terms of sevices screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 28/07/2022.
//

import SwiftUI

struct Terms_of_sevices_screen: View {
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
            }
            
            HStack{
                VStack(alignment: .leading){
                    Text("Terms of Service")
                        .font(.title)
                        .overlay((LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                        .mask( Text("Terms of Service")
                            .font(.title))
                        .padding(.bottom,5)
                    
                    Text("Last updated on July 2022")
                      .foregroundColor(.gray)
                }
                
                Spacer()
                
            }.padding(.top)
            
            Image("Line 6")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 400, height: 1)
                .padding(.bottom)
            
            ScrollView(.vertical){
                HStack{
                    Text("Terms")
                        .font(.title)
                        .overlay((LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                        .mask( Text("Terms")
                            .font(.title))
                        .padding(.bottom,5)
                    
                    Spacer()
                }
                
                VStack(alignment: .leading){
                    Text("rem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nibh eget bibendum nibh. Malesuada eget faucibus arcu turpis lectus. Vulputate sociis et, adipiscing id pharetra at arcu, iaculis pellentesque. Facilisis sed ut mi tincidunt vel feugiat. Ullamcorper amet, tincidunt posuere ornare orci. At eget euismod senectus nisi eget.")
                }.padding(.bottom)
                
                HStack{
                    Text("Use License")
                        .font(.title)
                        .overlay((LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                        .mask( Text("Use License")
                            .font(.title))
                        .padding(.bottom,5)
                    
                    Spacer()
                }
                
                VStack(alignment: .leading){
                    Text("rem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nibh eget bibendum nibh. Malesuada eget faucibus arcu turpis lectus. Vulputate sociis et, adipiscing id pharetra at arcu, iaculis pellentesque. Facilisis sed ut mi tincidunt vel feugiat. Ullamcorper amet, tincidunt posuere ornare orci. At eget euismod senectus nisi eget.")
                }.padding(.bottom)
            }
          
        }
        .padding()
        
    }
}

struct Terms_of_sevices_screen_Previews: PreviewProvider {
    static var previews: some View {
        Terms_of_sevices_screen()
    }
}
