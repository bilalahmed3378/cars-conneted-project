//
//  Transacation detail.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 28/07/2022.
//

import SwiftUI

struct Transacation_detail: View {
    var body: some View {
        VStack{
            HStack{
                Button(action: {}, label: {
                    
                    Image("Icons-2")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 35, height: 35)
                })
               
                
                Spacer()
                
                Text("Transaction")
                    .font(.title)
                   
                
                Spacer()
               
               }
            .padding()
            .padding(.leading,-10)
            
            ScrollView{
                HStack{
                    VStack(alignment: .leading){
                    Text("Your Balance")
                        .font(.title)
                        .overlay((LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                        .mask( Text("Your Balance")
                            .font(.title))
                        .padding(.bottom,5)
                        
                        Text("$365.89")
                            .fontWeight(.semibold)

                    }
                    
                     Spacer()
                        
                }
                .padding()
                
                Image("Screenshot (29) 1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 380, height: 220)
                
                
                HStack{
                    Text("Transaction")
                        .font(.title)
                        Spacer()
                    Text("See all")
                        .foregroundColor(.red)
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
              
        }
        
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
                    .foregroundColor(.black)
                    .padding(.bottom,5)
                Text("Today 8:23 AM")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            Spacer()
                Text("$50.00")
        }
        .frame(width: 377, height: 60)
        
        Image("Line 6")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 377, height: 1)
            .padding(.bottom)
        
    }
}
