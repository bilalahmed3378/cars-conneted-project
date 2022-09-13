//
//  Following Screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 12/09/2022.
//

import SwiftUI

struct Following_Screen: View {
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
                    
                    Text("Following")
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
                        Text("Following")
                            .foregroundColor(AppColors.redGradientColor1)
                            .font(AppFonts.semiBold_16)
                        Spacer()
                    }
                    .padding()
                    
                    LazyVStack{
                    ForEach(0...10 , id: \.self){index in
                        
                        following()
                        
                      
                        
                        
                    }
                    }
                    
                }
             
          
        }  .edgesIgnoringSafeArea(.top)
        .navigationBarHidden(true)
}
      
           
    }


struct Following_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Following_Screen()
    }
}



struct following: View {
    @State var isFollow = false
    var body : some View {
        
        HStack{
            Image("unsplash_X6Uj51n5CE8")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 60, height: 60)
            
            VStack(alignment: .leading){
                Text("Emma Watson")
                    .font(AppFonts.medium_14)
                    .padding(.bottom,2)
                
                Text("Lala Musa, Pakistan")
                    .foregroundColor(.gray)
                    .font(AppFonts.regular_12)
                
            }
            Spacer()
           
            if(self.isFollow){
            Button(action: {
                self.isFollow = false
            }, label: {
                
                Text("Follow")
                    .font(AppFonts.medium_12)
                    .foregroundColor(.white)
                    .background(RoundedRectangle(cornerRadius: 5).fill((LinearGradient(colors: [AppColors.redGradientColor1,AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing))).frame(width: UIScreen.widthBlockSize*20, height: UIScreen.heightBlockSize*5))
                    .padding()
            })
            }
            
            if (!self.isFollow){
            Button(action: {
                self.isFollow = true
            }, label: {
                Text("unfollow")
                    .font(AppFonts.medium_12)
                    .foregroundColor(AppColors.redGradientColor1)
                    .background(RoundedRectangle(cornerRadius: 5).strokeBorder(AppColors.redGradientColor1).frame(width: UIScreen.widthBlockSize*20, height: UIScreen.heightBlockSize*5))
                    .padding()
            })
            }
            
            
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
