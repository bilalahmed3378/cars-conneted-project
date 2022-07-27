//
//  My Garage.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 27/07/2022.
//

import SwiftUI

struct My_Garage: View {
    @State private var searchText = ""
   
    
    var body: some View {
      
        VStack{
            
            VStack{
                
                // top bar
                HStack{
                    
                    Image("side menu icon white")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 35, height: 35)
                    Spacer()
                    
                    Text("My Garage")
                        .font(.title)
                        .foregroundColor(.white)
                    
                    Spacer()
                    
                    Image("doted icons-1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 35, height: 35)
                    
                    
                }.padding(.leading,24)
                    .padding(.trailing,24)
                    .padding(.top,20)
                
                
                
                HStack{
                    
                    TextField("Search",text: self.$searchText)
                        .foregroundColor(.red)
                    
                    Image(systemName: "magnifyingglass")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width:20,height: 20)
                        .foregroundColor(.red)
                    
                    
                }
                .padding(15)
                .background(RoundedRectangle(cornerRadius: 10).fill(.white.opacity(0.7)))
                .padding(.top,20)
                .padding(.leading,20)
                .padding(.trailing,20)
                
                
                
            }
            .padding(.top,30)
                .padding(.bottom,15)
                .background(
                    Image("home screen background")
                        .resizable())
            
            ScrollView{
                
                HStack{
                    Text("5 Cars in Garage")
                        .font(.title)
                        .foregroundColor(AppColors.redGradientColor1)
                    Spacer()
                }.padding(20)
                    
                    HStack{
                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliqueto.")
                            .foregroundColor(.gray)
                        
                        Spacer()
                    }
                    .padding(.leading,20)
                    .padding(.bottom)
                
                LazyVStack{
                    ForEach( 0...5 , id: \.self){ index in
                        myGaragePosts()
                    }
                }
                
                
            }
           
            
            
            
        }
        .edgesIgnoringSafeArea(.top)
    
    }
}

struct My_Garage_Previews: PreviewProvider {
    static var previews: some View {
        My_Garage()
    }
}
struct myGaragePosts : View {
    
    var body: some View {
        
        
        VStack{
            ZStack(alignment: .leading){
                Image("unsplash_1ZhZpP91olQ")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 377, height: 190)
                VStack{
                    HStack{
                        Text("Slot 1")
                            .font(.caption)
                            .foregroundColor(.white)
                            .frame(width: 80, height: 30)
                            .background(RoundedRectangle(cornerRadius: 8).fill(.gray))
                        Spacer()
                    }
                    .padding(.leading)
                    
                    Spacer()
                    
                    HStack{
                        Image("Icons-3")
                        Spacer()
                        Image("Icons-4")
                    }
                    .padding(.leading)
                    .padding(.trailing)
                }
            }
            
            HStack{
                Text("Honda Civic 1.6 Turbo")
                    .fontWeight(.bold)
                Spacer()
                
                Text("view details")
                    .foregroundColor(AppColors.redGradientColor1)
            }
            .padding(.top,30)
            .padding(.bottom,20)
            
        }
        .padding()
    }
}
