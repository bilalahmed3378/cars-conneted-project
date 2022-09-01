//
//  Proximity location screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 16/08/2022.
//

import SwiftUI

struct Proximity_location_screen: View {
    
    @Environment (\.presentationMode) var presentationMode
    @State var searchText : String = ""
    
    var body: some View {
        VStack{
        
        VStack{
            
           
            HStack{
                Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image("back icon")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 35, height: 35)
                })
              
                
               Spacer()
                
                Text("Proximity Location")
                    .foregroundColor(.white)
                    .font(AppFonts.SemiBold_20)
                    .offset(x: -15)
                
                Spacer()
                
                
                
            }.padding(.leading,20)
                .padding(.trailing,20)
                .padding(.top,20)
            
        }  .padding(.top,40)
            .padding(.bottom,30)
            .background(
                Image("home screen background")
                .resizable())
            
            
            
            HStack{
                Text("Enter your location to find nearby events")
                    .font(AppFonts.regular_12)
                
                Spacer()
            }
            .padding()
            .padding(.leading,15)
            .padding(.top,20)
            
          
            
            HStack{
                Spacer()
                VStack{
                Image("Location Precise")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: UIScreen.widthBlockSize*35, height: 120)
                   
                    
                    Text("Precise")
                        .font(AppFonts.semiBold_16)
                    
                }
                .background(RoundedRectangle(cornerRadius: 10).fill(.gray).opacity(0.2).frame(width: UIScreen.widthBlockSize*45, height: 190))
                
                
                Spacer()
                Spacer()
                
                VStack{
                    
                Image("Location Approximate")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: UIScreen.widthBlockSize*35, height: 120)
                    
                    Text("Approximate")
                        .font(AppFonts.semiBold_16)
                    
                }
                
                Spacer()
            }
            .padding(.leading)
            .padding(.trailing)
            .padding(.top,25)
            
            
           
            
            HStack{
                
                TextField("Washington, DC",text: self.$searchText)
                    .foregroundColor(.red)
                    .font(AppFonts.regular_14)
                
                Image(systemName: "magnifyingglass")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:20,height: 20)
                    .foregroundColor(.black)
                
                
                
                
                
            } .padding(15)
                .background(RoundedRectangle(cornerRadius: 25).strokeBorder(.gray))
                .padding(.leading)
                .padding(.trailing)
                .padding(.top,30)
            
            
            
            Text("Confirm")
                .font(AppFonts.semiBold_16)
                .foregroundColor(.white)
                .background(RoundedRectangle(cornerRadius: 50).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)).frame(width: UIScreen.widthBlockSize*90, height: UIScreen.heightBlockSize*7))
                .padding(.top,30)
            
            
            Spacer()
        }.edgesIgnoringSafeArea(.top)
            .navigationBarHidden(true)
    }
}

struct Proximity_location_screen_Previews: PreviewProvider {
    static var previews: some View {
        Proximity_location_screen()
    }
}
