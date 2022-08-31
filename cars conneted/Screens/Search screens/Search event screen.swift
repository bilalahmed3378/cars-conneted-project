//
//  Search event.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 20/07/2022.
//

import SwiftUI

struct Search_event: View {
    @State private var searchText = ""
    @Environment(\.presentationMode) var presentaionMode
    var body: some View {
        ZStack{
            
        VStack{
            
            VStack{
                HStack{
                    Image("back icon")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 35, height: 35)
                        .padding(.top,30)
                        .padding(.bottom,10)
                    
        HStack{
            
            TextField("Search",text: self.$searchText)
                .font(AppFonts.regular_14)
                .foregroundColor(.red)
            
            Image(systemName: "magnifyingglass")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:20,height: 20)
                .foregroundColor(.red)
            
            
           
            
            
        } .padding(15)
                .background(RoundedRectangle(cornerRadius: 10).fill(.white.opacity(0.7)))
                .padding(.top,20)
              
                .padding(.trailing,20)
                }
                
              
          
        }.padding(.leading,20)
                .padding(.bottom,15)
                .background(
                    Image("home screen background")
                    .resizable() .edgesIgnoringSafeArea(.top)
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
                        .foregroundColor(.red)
                        .font(AppFonts.medium_14)
                    Spacer()
                    Text("Clubs")
                        .foregroundColor(.gray)
                        .font(AppFonts.medium_14)
                   
                }
                    
                    
            
                    Image("Line 7")
                }.padding(.top,5)
                    .padding()
                
                
                
              
                }
            HStack{
                Text("256 Events")
                    .font(AppFonts.semiBold_14)
                    .foregroundColor(.red)
                Spacer()
            }.padding(.leading,20)
            
            
            ScrollView(showsIndicators: false){
            
                LazyVStack{
                    
                    ForEach(0...10 , id:\.self){ index in
                        EventCard()
                    }
                    
                }
                
               
                
            }
        }
        
        } .navigationBarHidden(true)
    }
}

struct Search_event_Previews: PreviewProvider {
    static var previews: some View {
        Search_event()
    }
}


struct EventCard : View {
    
    var body: some View {
        ZStack{
          
            Image("Event cards pic")
                .resizable()
               
            
          
            
            VStack(alignment: .leading){
                HStack{
                    Spacer()
                    Image("bookmark small")
                }
                Spacer()
                Text("Cars Expo 2022")
                    .font(AppFonts.bold_20)
                    .foregroundColor(Color.white)
                HStack{
                    Image("bxs_star")
                    Image("bxs_star")
                    Image("bxs_star")
                    Image("bxs_star")
                    Image("bxs_star")
                    
                    Text("5.0")
                        .foregroundColor(.white)
                        .font(AppFonts.regular_12)
                }
                
                HStack{
                    Image("time Icons")
                    Text("June 8,2022")
                        .foregroundColor(.white)
                        .font(AppFonts.regular_12)
                }
                HStack{
                    Image("location Icons")
                    Text("KPK, Pakistan")
                        .foregroundColor(.white)
                        .font(AppFonts.regular_12)
                }
                
                HStack{
                  
                    Text("$25")
                        .font(AppFonts.regular_14)
                        .foregroundColor(.gray)
                        .background(RoundedRectangle(cornerRadius: 50).fill(.white).frame(width: 86, height: 45))
                    
                
                    Spacer()
                    
                    Button(action: {
                       
                    }){
                        VStack{
                            Text("Register")
                                .font(AppFonts.regular_14)
                                .foregroundColor(.white)
                                .background(RoundedRectangle(cornerRadius: 50).fill((LinearGradient(colors: [AppColors.redGradientColor1,AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing))).frame(width: 200, height: 45))
                        }
                    }
                   
                  
                }.padding(.trailing,75)
                    .padding(.leading,30)
                    .padding(.top,20)
                    .padding(.bottom,10)
                
            }
            .padding(20)
            
            
         
            
          
            
        }
            .frame(height:280)
            .padding(.leading,20)
            .padding(.trailing,20)
            .padding(.bottom,10)
           
    }
}
