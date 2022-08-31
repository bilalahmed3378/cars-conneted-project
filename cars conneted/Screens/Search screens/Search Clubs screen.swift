//
//  Search Clubs.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 20/07/2022.
//

import SwiftUI

struct Search_Clubs: View {
    @State private var searchText = ""
    @Environment(\.presentationMode) var presentaionMode
    var body: some View {
        ZStack{
            
            VStack{
                
                VStack(spacing:0){
                    
                    HStack{
                        
                        Image("back icon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 35, height: 35)
                            
                        
                        HStack{
                            
                            TextField("Search",text: self.$searchText)
                                .foregroundColor(.red)
                                .font(AppFonts.regular_14)
                            
                            Image(systemName: "magnifyingglass")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width:20,height: 20)
                                .foregroundColor(.red)
                            
                            
                            
                            
                            
                        } .padding(15)
                            .background(RoundedRectangle(cornerRadius: 10).fill(.white.opacity(0.7)))
                            
                    }
                    
                    
                    
                }
                .padding()
                    .padding(.top,40)
                    .background(
                        Image("home screen background")
                            .resizable()
                    )
                
                
                
                HStack{
                    
                    
                    
                    
                    VStack{
                        
                        HStack{
                            Text("People")
                                .font(AppFonts.medium_14)
                                .foregroundColor(.gray)
                            Spacer()
                            Text("Posts")
                                .font(AppFonts.medium_14)
                                .foregroundColor(.gray)
                            Spacer()
                            Text("Events")
                                .font(AppFonts.medium_14)
                                .foregroundColor(.gray)
                            Spacer()
                            Text("Clubs")
                                .font(AppFonts.medium_14)
                                .foregroundColor(.red)
                            
                            
                            
                        }
                        
                        Image("Line 7")
                    }.padding(.top,5)
                        .padding()
                    
                    
                }
                
                ScrollView(showsIndicators: false){
                    
                    LazyVStack{
                        ForEach(0...10 , id:\.self){ index in
                            ClubCard()
                
                }
               
                
                    }
            }
                }
        }
        .edgesIgnoringSafeArea(.top)
        .navigationBarHidden(true)
    }
}

struct Search_Clubs_Previews: PreviewProvider {
    static var previews: some View {
        Search_Clubs()
    }
}
struct ClubCard : View {
  
  var body: some View {
      
      HStack{
          
          Image("Image clubs")
          
          VStack(alignment: .leading){
              
              HStack{
                  Text("Ace Classic Club")
                      .font(AppFonts.semiBold_14)
                      .foregroundColor(.red)
                      .lineLimit(1)
                  
                  Spacer()
              }
              
              ZStack{
                  
                  Image("unsplash_1Fsb2C7hxQ0")
                      .resizable()
                      .aspectRatio(contentMode: .fit)
                      .frame(width: 20, height: 20)
                  
                  Image("unsplash_uXhUyqMnC_U")
                      .resizable()
                      .aspectRatio(contentMode: .fit)
                      .frame(width: 20, height: 20)
                      .offset(x: 12)
                  
                  Image("unsplash_ZAFpiVgZNng")
                      .resizable()
                      .aspectRatio(contentMode: .fit)
                      .frame(width: 20, height: 20)
                      .offset(x: 24)
                  
                  Image("unsplash_-IPFb6J03Mw")
                      .resizable()
                      .aspectRatio(contentMode: .fit)
                      .frame(width: 20, height: 20)
                      .offset(x: 36)
              }
              
              Text("+120 Members")
                  .font(AppFonts.medium_12)
                  .foregroundColor(.gray)
              
              
          }
          .padding(.leading,5)
          
          Button(action: {}, label: {
              Text("Leave")
                  .font(AppFonts.medium_12)
                  .foregroundColor(.red)
                  .padding(10)
                  .padding(.leading,5)
                  .padding(.trailing,5)
                  .background(RoundedRectangle(cornerRadius: 5).fill(AppColors.redGradientColor1.opacity(0.2)))
          })
         
      }
      .padding()
      .background(RoundedRectangle(cornerRadius: 10).fill(AppColors.redGradientColor1).opacity(0.03))
      .padding(.leading,15)
      .padding(.trailing,15)
  }
}
  
