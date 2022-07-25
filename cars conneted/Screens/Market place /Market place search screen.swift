//
//  Maeket place search.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 24/07/2022.
//

import SwiftUI

struct Maeket_place_search: View {
    @State private var searchText = ""
    @State var toScreen = false
    
    
    var body: some View {
        
        NavigationLink(destination: Product_Details(), isActive: $toScreen){
            
            EmptyView()
            
        }
        
        ZStack{
            
            VStack{
                
                VStack(spacing:0){
                    
                    HStack{
                        
                        Image("back icon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 35, height: 35)
                            
                        
                        HStack{
                            
                            TextField("BMW Head Lights",text: self.$searchText)
                                .foregroundColor(.red)
                            
                            Image(systemName: "magnifyingglass")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width:20,height: 20)
                                .foregroundColor(.red)
                       
                        } .padding(15)
                            .background(RoundedRectangle(cornerRadius: 10).fill(.white.opacity(0.7)))
                        
                        Button(action: {}, label: {
                            Image("Filter 2")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 35, height: 35)
                                .padding()
                                .frame(width: 53, height: 53)
                                .background(RoundedRectangle(cornerRadius: 10).fill(.white.opacity(0.7)))
                                .padding(.leading,10)
                        })
                       
                    }
                
                }
                .padding()
                    .padding(.top,40)
                    .background(
                        Image("home screen background")
                            .resizable())
                
                HStack{
                    Text("45 Total Results")
                        .foregroundColor(AppColors.redGradientColor1)
                    Spacer()
                }.padding()
                
                ScrollView(.vertical, showsIndicators: false){
                    LazyVStack{
                        ForEach(0...5 , id:\.self){ index in
                            marketPlaceSreachCards(toScreen:$toScreen)
                    }
                    
                }
             
                }
        }
        .edgesIgnoringSafeArea(.top)
    }
       
}

struct Maeket_place_search_Previews: PreviewProvider {
    static var previews: some View {
        Maeket_place_search()
    }
}

struct marketPlaceSreachCards : View {
    
    @Binding var toScreen : Bool
    
    var body: some View {
       
        ZStack(alignment: .leading){
            Image("Rectangle 1265")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 375, height: 220)
                .cornerRadius(10)
            
            VStack(alignment: .leading){
                HStack{
                    Image("Rectangle 1266")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 40, height: 40)
                    
                    VStack(alignment: .leading){
                        Text("Jhon Deo Smith")
                            .foregroundColor(.white)
                            .font(.caption)
                            .fontWeight(.medium)
                            .padding(.bottom,3)
                        Text("Tot. Sales 13")
                            .foregroundColor(.white)
                            .font(.caption)
                      
                    }
                    Spacer()
                    Text("$50")
                        .foregroundColor(.white)
                        .font(.title)
                    
                }.padding()
                    .padding(.bottom,-5)
                    .padding(.top,5)
                
                HStack{
                Text("BMW Lazer Head Lights")
                    .foregroundColor(.white)
                }.padding(.leading)
                
                HStack{
                    Text("Spare Parts")
                        .foregroundColor(.white)
                        .font(.caption)
                }.padding(.leading)
                    .padding(.top,-3)
                
                HStack{
                    Image("yellow Star icon")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 18, height: 18)
                    
                    Image("yellow Star icon")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 18, height: 18)
                    
                    Image("yellow Star icon")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 18, height: 18)
                    
                    Image("yellow Star icon")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 18, height: 18)
                    
                    Image("yellow Star icon")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 18, height: 18)
                }
                .padding(.leading)
                .padding(.top,1)
                .padding(.bottom,5)
                
                HStack{
                    Text("$500")
                        .font(.footnote)
                        .foregroundColor(.white)
                        .frame(width: 60, height: 35)
                        .background(RoundedRectangle(cornerRadius: 50).fill(.gray))
                    
                    Spacer()
                    Button(action: {
                        
                        toScreen = true
                        
                    }, label: {
                        Text("Purchase")
                            .font(.footnote)
                            .foregroundColor(.white)
                            .frame(width: 250, height: 35)
                            .background(RoundedRectangle(cornerRadius: 50).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                    })
                  
                       
                }
                .padding(.leading)
                .padding(.trailing)
                
                Spacer()
                
              
               
            }
            
        }
        .frame(width: 375, height: 200)
        .padding(.bottom,20)
        .padding(.top,10)
    }
}
}
