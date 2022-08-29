//
//  Events Screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 29/08/2022.
//

import SwiftUI
import MapKit

struct Events_Screen: View {
    
    @State private var mapRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.5, longitude: -0.12), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    
    @State private var searchText = ""
    @State private var isClicked: Int = 0
    
    
    var body: some View {
        
        VStack{
            
        VStack{
            
            // top bar
            HStack{
                Image("back icon")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 35, height: 35)
                
                Spacer()
                
                
                Text("Events")
                    .font(AppFonts.SemiBold_20)
                    .foregroundColor(.white)
                
                Spacer()
                
               
                
                Image("doted icons-1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 35)
                    .padding(.trailing,10)
                
             
                   
            }
           
            .padding(.leading)
                .padding(.trailing)
                .padding(.top,20)
            
            // search bar
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
            
            ScrollView(.vertical, showsIndicators: false){
            
            HStack{
                
                Button(action: {
                    self.isClicked = 1
                }, label: {
                    Text("My Events")
                        .foregroundColor(.gray)
                        .font(AppFonts.regular_14)
                        .padding(.top,10)
                        .padding(.bottom,10)
                        .padding(.leading,25)
                        .padding(.trailing,25)
                        .background(RoundedRectangle(cornerRadius: 20).fill(.gray.opacity(0.3)))
                })
               
                
                Button(action: {
                    self.isClicked = 2
                }, label: {
                    Text("Registered")
                        .foregroundColor(.gray)
                        .font(AppFonts.regular_14)
                        .padding(.top,10)
                        .padding(.bottom,10)
                        .padding(.leading,25)
                        .padding(.trailing,25)
                        .background(RoundedRectangle(cornerRadius: 20).fill(.gray.opacity(0.3)))
                })
               
                
                Button(action: {
                    self.isClicked = 3
                }, label: {
                    Text("Nearby")
                        .foregroundColor(.gray)
                        .font(AppFonts.regular_14)
                        .padding(.top,10)
                        .padding(.bottom,10)
                        .padding(.leading,25)
                        .padding(.trailing,25)
                        .background(RoundedRectangle(cornerRadius: 20).fill(.gray.opacity(0.3)))
                })
               
                
            }.padding()
           
                if(self.isClicked == 0){
            LazyVStack{
                ForEach(0...1, id: \.self){index in
                    EventsCardEvents()
                }
            }
                }
                
                if(self.isClicked == 1){
                LazyVStack{
                    ForEach(0...1, id: \.self){index in
                        myEventsCardEvents()
                    }
                }
                }
                
                
                if(self.isClicked == 2){
                LazyVStack{
                    ForEach(0...1, id: \.self){index in
                        RegisteredEventsCardEvents()
                    }
                }
                }
                
                if(self.isClicked == 3){
                Map(coordinateRegion: $mapRegion)
                    .frame(width: UIScreen.widthBlockSize*90, height: UIScreen.heightBlockSize*65)
                    .padding(.bottom)
                }
              
                
               
                
                
            }
            
            
            
           
        }.edgesIgnoringSafeArea(.all)
    }
}

struct Events_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Events_Screen()
    }
}

struct EventsCardEvents : View {
    
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

struct myEventsCardEvents : View {
    
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
                  
                    Text("Edit")
                        .font(AppFonts.regular_14)
                        .foregroundColor(AppColors.redGradientColor1)
                        .background(RoundedRectangle(cornerRadius: 50).fill(.white).frame(width: 86, height: 45))
                    
                
                    Spacer()
                   
                    
                    Button(action: {
                       
                    }){
                        HStack{

                            Text("Unpublished Event")
                                .font(AppFonts.regular_14)
                                .foregroundColor(.white)
                                .background(RoundedRectangle(cornerRadius: 50).fill((LinearGradient(colors: [AppColors.redGradientColor1,AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing))).frame(width: 200, height: 45))
                        }
                    }
                   
                  
                }.padding(.trailing,40)
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


struct RegisteredEventsCardEvents : View {
    
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
                  
                    Text("1d left")
                        .font(AppFonts.regular_14)
                        .foregroundColor(AppColors.redGradientColor1)
                        .background(RoundedRectangle(cornerRadius: 50).fill(.white).frame(width: 86, height: 45))
                    
                
                    Spacer()
                   
                    
                    Button(action: {
                       
                    }){
                        HStack{

                            Text("Registered")
                                .font(AppFonts.regular_14)
                                .foregroundColor(.white)
                                .background(RoundedRectangle(cornerRadius: 50).fill(.green).frame(width: 200, height: 45))
                        }
                    }
                   
                  
                }.padding(.trailing,70)
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
