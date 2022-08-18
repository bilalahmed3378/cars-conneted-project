//
//  search.swift
//  cars conneted
//
//  Created by Sohaib Sajjad on 27/07/2022.
//

import SwiftUI

struct search: View {
    var body: some View {
        
        VStack{
            
            //top bar
            ZStack{
                
                Image("clubsTopBar")
                    .resizable()
                    .frame(width: UIScreen.screenWidth, height: UIScreen.heightBlockSize*23)
                
                VStack{
                    
                    HStack{
                        
                        Image(systemName: "chevron.backward")
                            .foregroundColor(.white)
                        
                        Spacer()
                        
                        Text("Search")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        
                        Spacer()
                        
                        Image("dottedIcons")
                            .resizable()
                            .frame(width: UIScreen.widthBlockSize*8, height: UIScreen.heightBlockSize*3)
                            .foregroundColor(.white)
                        
                    }
                    
                    HStack{
                        
                        Text("Search")
                            .fontWeight(.bold)
                            .foregroundColor(AppColors.redGradientColor1)
                        
                        Spacer()
                        
                        Image(systemName: "magnifyingglass")
                            .font(.system(size: 22))
                            .foregroundColor(AppColors.redGradientColor1)
                        
                    }
                    .padding(12)
                    .background(Color.white)
                    .cornerRadius(10)
                    .opacity(0.45)
                    .padding(.top,20)
                    .padding(.bottom,20)
                    
                    
                }
                .padding(.leading,20)
                .padding(.trailing,20)
                .padding(.top,20)
                
                
            }

            ScrollView(.vertical,showsIndicators: false){
                
                VStack{
                    
                    Event_Card()
                    Event_Card()
                    Event_Card()
                    Event_Card()

                    
                }.padding(.leading,20)
                    .padding(.trailing,20)
                    .padding(.top,10)

            }
            
           
            
        }.edgesIgnoringSafeArea(.all)
        
    }
}

struct search_Previews: PreviewProvider {
    static var previews: some View {
        search()
    }
}
