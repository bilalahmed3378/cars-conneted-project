//
//  Search Clubs.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 20/07/2022.
//

import SwiftUI

struct Search_Clubs: View {
    @State private var searchText = ""
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
                                .foregroundColor(.red)
                            Spacer()
                            Text("Posts")
                                .foregroundColor(.gray)
                            Spacer()
                            Text("Events")
                                .foregroundColor(.gray)
                            Spacer()
                            Text("Clubs")
                                .foregroundColor(.gray)
                            
                            
                            
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
                  .font(.caption)
                  .foregroundColor(.gray)
              
              
          }
          .padding(.leading,5)
          
          Button(action: {}, label: {
              Text("Leave")
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
  
