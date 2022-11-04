//
//  SavedItemsScreen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 27/10/2022.
//

import SwiftUI

struct SavedItemsScreen: View {
    @Environment(\.presentationMode) var presentaionMode
    var body: some View {
        VStack{
            
            VStack(spacing:0){
                
                HStack{
                    
                    Button(action: {
                        self.presentaionMode.wrappedValue.dismiss()
                    }, label: {
                        Image("back icon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 35, height: 35)
                            
                    })
                    
                    Spacer()
                    
                    Text("Saved Items")
                        .font(AppFonts.SemiBold_20)
                        .foregroundColor(.white)
                     
                    Spacer()
                }
                .padding(.top,10)
                
            }
            .padding()
                .padding(.top,40)
                .background(
                    Image("home screen background")
                        .resizable()
                )
               
               
            
            ScrollView(.vertical, showsIndicators: false){
                LazyVStack{
                    ForEach(0...3, id: \.self){index in
                       EventsHome()
                        
                        ClubsCardHome()
                       
                       PostsHome()
                    }
                }
            }
            
            
        }
        .navigationBarHidden(true)
        .edgesIgnoringSafeArea(.top)
    }
}


