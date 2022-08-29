//
//  Transcation history Screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 29/08/2022.
//

import SwiftUI

struct Transcation_history_Screen: View {
    @State private var search = ""
    var body: some View {
        VStack{
            VStack{
                
                Group{
                HStack{
                    Button(action: {
                    }, label: {
                        Image("side menu icon white")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 35, height: 35)
                    })
                  
                    
                   Spacer()
                    
                    Text("Transaction")
                        .foregroundColor(.white)
                        .font(AppFonts.SemiBold_20)
                    
                    Spacer()
                    
                    Image("Ellipse 35-1")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 35, height: 35)
                    
                   
                    
                }.padding(.leading,20)
                    .padding(.trailing,20)
                    .padding(.top,20)
                
            }  .padding(.top,40)
                .padding(.bottom,30)
                .background(
                    Image("home screen background")
                    .resizable())
            }
            
            HStack{
                
                TextField("Search",text: self.$search)
                    .foregroundColor(.red)
                
                Image(systemName: "magnifyingglass")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:20,height: 20)
                    .foregroundColor(.red)
                
                
            }
            .padding(15)
            .background(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.2)))
            .padding()
            
            ScrollView(){
            HStack{
                Text("Today")
                    .foregroundColor(.gray)
                    .font(AppFonts.medium_16)
                
                Spacer()
            }.padding(.leading)
                .padding(.trailing)
            
                LazyVStack{
                    ForEach(0...3, id: \.self){index in
                        transactionsHistory()
                        
                    }
                }
                
                HStack{
                    Text("22/10/2021")
                        .font(AppFonts.medium_16)
                        .foregroundColor(.gray)
                    
                    Spacer()
                }
                .padding()
                
                LazyVStack{
                    ForEach(0...3, id: \.self){index in
                        transactionsHistory()
                        
                    }
                }
                
                
            
            }
            Spacer()
        }.edgesIgnoringSafeArea(.all)
    }
}

struct Transcation_history_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Transcation_history_Screen()
    }
}

struct transactionsHistory: View{
    var body: some View{
        VStack{
            HStack{
                Text("Basic User")
                    .font(AppFonts.medium_16)
                
                Spacer()
                
                Text("$50")
                    .foregroundColor(.blue)
                    .font(AppFonts.medium_16)
            }
            .padding()
            .padding(.bottom,-10)
            
            HStack{
                Text("03/07/2022")
                    .font(AppFonts.regular_12)
                    .foregroundColor(.gray)
                
                Text("-")
                    .font(AppFonts.regular_12)
                    .foregroundColor(.gray)
                
                Text("04/08/2022")
                    .font(AppFonts.regular_12)
                    .foregroundColor(.gray)
                
                Spacer()
                
            }
            .padding(.leading)
                .padding(.trailing)
            
            HStack{
                Image("logos_visa")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 20, height: 15)
                
                Text("**** **** **** *932")
                    .font(AppFonts.regular_12)
                    .foregroundColor(.gray)
                
                Spacer()
                
                Text("View Reciept")
                    .font(AppFonts.regular_12)
                    .foregroundColor(AppColors.redGradientColor1)
                
            }
            .padding(.leading)
                .padding(.trailing)
                .padding(.bottom)
            
        }
            .background(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.2)))
            .padding(.leading)
            .padding(.trailing)
            .padding(.top,10)
            .padding(.bottom,10)
    }
}
