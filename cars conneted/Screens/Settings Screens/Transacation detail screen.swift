//
//  Transacation detail.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 28/07/2022.
//

import SwiftUI

struct Transacation_detail: View {
    @Environment(\.presentationMode) var PresentationMode
    var body: some View {
        VStack{
            HStack{
                Button(action: {
                    self.PresentationMode.wrappedValue.dismiss()
                }, label: {
                    
                    Image("Icons-2")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 35, height: 35)
                })
               
                
                Spacer()
                
                Text("Transaction")
                    .font(AppFonts.SemiBold_20)
                   
                
                Spacer()
               
               }
            .padding()
            .padding(.leading,-10)
            
            ScrollView{
                HStack{
                    VStack(alignment: .leading){
                    Text("Your Balance")
                            .font(AppFonts.semiBold_22)
                        .overlay((LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                        .mask( Text("Your Balance")
                            .font(AppFonts.semiBold_22))
                        .padding(.bottom,5)
                        
                        Text("$365.89")
                            .font(AppFonts.semiBold_18)

                    }
                    
                     Spacer()
                        
                }
                .padding()
                
                Image("Screenshot (29) 1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: UIScreen.widthBlockSize*90, height: 180)
                
                
                HStack{
                    Text("Transaction")
                        .font(AppFonts.semiBold_22)
                        Spacer()
                    Button(action: {}, label: {
                        Text("See all")
                            .font(AppFonts.regular_16)
                            .foregroundColor(.red)
                    })
                  
                }
                .padding()
                
                LazyVStack{
                    ForEach(0...3, id: \.self){
                        index in
                        Transactions()
                    }
                }
            }
          
            
          
            Spacer()
              
        }.navigationBarHidden(true)
        
    }
}

struct Transacation_detail_Previews: PreviewProvider {
    static var previews: some View {
        Transacation_detail()
    }
}

struct Transactions : View {
    
    
    var body: some View {
        
        HStack{
            
            Image("unsplash_X6Uj51n5CE8")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 60, height: 60)
            
            VStack(alignment: .leading){
                Text("Ahmmd Shah")
                    .font(AppFonts.semiBold_14)
                    .foregroundColor(.black)
                    .padding(.bottom,5)
                Text("Today 8:23 AM")
                    .font(AppFonts.regular_12)
                    .foregroundColor(.gray)
            }
            Spacer()
                Text("$50.00")
                .font(AppFonts.semiBold_14)
        }
        .frame(width: UIScreen.widthBlockSize*90, height: 60)
        
       Divider()
            .padding(.bottom)
        
    }
}
