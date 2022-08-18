//
//  Events.swift
//  cars conneted
//
//  Created by Sohaib Sajjad on 27/07/2022.
//

import SwiftUI

struct Events: View {
    var body: some View {
        
        
        VStack{
            
            
            //topbar
            Events_Top_bar()
            
           
                    
                    ScrollView(.horizontal,showsIndicators: false){
                    
                        HStack{
                            
                            Text("My Events")
                                .fontWeight(.medium)
                                .foregroundColor(.white)
                                .padding(10)
                                .padding(.leading,5)
                                .padding(.trailing,5)
                                .overlay(Color.gray.opacity(0.3))
                                .cornerRadius(100)
                            
                            
                            Text("Registered")
                                .padding(10)
                                .padding(.leading,5)
                                .padding(.trailing,5)
                                .overlay(Color.gray.opacity(0.3))
                                .cornerRadius(100)
                            
                            
                            Text("Nearby")
                                .padding(10)
                                .padding(.leading,5)
                                .padding(.trailing,5)
                                .overlay(Color.gray.opacity(0.3))
                                .cornerRadius(100)
                            
                            Text("Nearby")
                                .padding(10)
                                .padding(.leading,5)
                                .padding(.trailing,5)                        .overlay(Color.gray.opacity(0.3))
                                .cornerRadius(100)
                            Text("Nearby")
                                .padding(10)
                                .padding(.leading,5)
                                .padding(.trailing,5)                        .overlay(Color.gray.opacity(0.3))
                                .cornerRadius(100)
                            
                            
                            
                        }.padding(.top,10)

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



struct Event_Card : View {
    
    var body: some View {
        ZStack{
            
            Image("Event cards pic")
                .resizable()
                .frame(height:250)
            

            
            
            
            VStack(alignment: .leading){
                
                HStack{
                    
                    Spacer()
                    
                    Image(systemName: "bookmark")
                        .foregroundColor(.white)
                        .padding(5)
                        .background(Color.white.opacity(0.4))
                        .cornerRadius(10)
                }
                
                Spacer()
                
                Text("Cars Expo 2022")
                    .fontWeight(.bold)
                    .font(.system(size: 20))
                    .foregroundColor(Color.white)
                
                Spacer()
                
                HStack{
                    
                    
                    Text("5.0")
                        .fontWeight(.medium)
                        .foregroundColor(.white)
                        .font(.caption)
                }
                
                HStack{
                    Image("time Icons")
                    Text("June 8,2022")
                        .fontWeight(.medium)
                        .foregroundColor(.white)
                        .font(.caption)
                }
                HStack{
                    Image("location Icons")
                    Text("KPK, Pakistan")
                        .fontWeight(.medium)
                        .foregroundColor(.white)
                        .font(.caption)
                }
                
                Spacer()
                
                HStack{
                    
                    Text("$25")
                        .foregroundColor(.gray)
                        .padding(10)
                        .padding(.leading,10)
                        .padding(.trailing,10)
                        .background(Color.white)
                        .cornerRadius(200)
                    
                    Spacer()
                    
                    Button(action: {
                        
                    }){
                        HStack{
                            
                            Spacer()
                            
                            Text("Register")
                                .fontWeight(.medium)
                                .foregroundColor(.white)
                               
                            
                            Spacer()
                            
                        }
                            .padding(10)
                            .background(RoundedRectangle(cornerRadius: 50).fill((LinearGradient(colors: [AppColors.redGradientColor1,AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing))))
                            .padding(.leading,10)
                    }
                    
                    
                }
                
            }
            .padding(20)
            .background(Color.black.opacity(0.2))
            .cornerRadius(50)
            
            
            
            
            
        }
        .frame(height:250)
        .padding(.top,10)

        
        
    }
}




struct Events_Top_bar : View {
    
    var body: some View {

ZStack{
    
    Image("clubsTopBar")
        .resizable()
        .frame(width: UIScreen.screenWidth, height: UIScreen.heightBlockSize*23)
    
    VStack{
        
        HStack{
            
            Image(systemName: "chevron.backward")
                .foregroundColor(.white)
            
            Spacer()
            
            Text("Clubs")
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

    }
    
}



struct Events_Previews: PreviewProvider {
    static var previews: some View {
        Events()
    }
}
