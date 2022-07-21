//
//  Search people screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 19/07/2022.
//

import SwiftUI

struct Search_people_screen: View {
    @State private var searchText = ""
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
                        PeopleCard()
          
            }
            
               
                
           
                }
            }
        }
        }
    }
}

struct Search_people_screen_Previews: PreviewProvider {
    static var previews: some View {
        Search_people_screen()
    }
}

  struct PeopleCard : View {
    
    var body: some View {
        
        HStack{
            Image("Ellipse 33").padding(.trailing,10)
            VStack(alignment: .leading){
                Text("Jason Statham").padding(.bottom,1)
                
                Text("@jason123")
                    .font(.caption)
                    .padding(.bottom,1)
                
                Text("Followed by Eminem12")
                    .font(.caption)
                    .foregroundColor(.gray)
                    
            
            }
            Spacer()
            Button(action: {}, label: {
                Text("Follow").foregroundColor(.white)
                    .background(RoundedRectangle(cornerRadius: 5).fill((LinearGradient(colors: [AppColors.redGradientColor1,AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing))).frame(width: 86, height: 45))
                    .padding()
            })
           
            
        }.padding()
        Image("Line 7")
    }
}
    
