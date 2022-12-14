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
    
    @State private var addFilter  = false
    @State private var selectType = ""
    @State private var searchTextFilter  = ""
    @State var distanceValue : Int = 100
    @State private var toSearch  = false
    
    @Binding var isDrawerOpen : Bool
    
    init(isDrawerOpen : Binding<Bool>){
        self._isDrawerOpen = isDrawerOpen
    }
    
    
    var body: some View {
        
        ZStack{
        
        VStack{
            
        VStack{
            
            // top bar
            HStack{
                Button(action: {
                    self.isDrawerOpen.toggle()
                }, label: {
                    Image("side menu icon white")
                           .resizable()
                           .aspectRatio(contentMode: .fit)
                           .frame(width: 35, height: 35)
                })
                
                Spacer()
                
                
                Text("Events")
                    .font(AppFonts.SemiBold_20)
                    .foregroundColor(.white)
                
                Spacer()
                
               
                
                Image("doted icons-1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 35, height: 35)
                   
                
             
                   
            }
           
            .padding(.leading)
                .padding(.trailing)
                .padding(.top,20)
            
            // search bar
            HStack{
                
                TextField("Search",text: self.$searchText)
                    .foregroundColor(.red)
                
                NavigationLink(destination: {
                    Event_Search_Screen()
                }, label: {
                    Image(systemName: "magnifyingglass")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width:20,height: 20)
                        .foregroundColor(.red)
                })
              
                
                Button(action: {
                    self.addFilter = true
                }, label: {
                    Image("Filter 2")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 20, height: 20)
                   
                       
                })

                
                
            }
            .padding(15)
            .background(RoundedRectangle(cornerRadius: 10).fill(.white.opacity(0.7)))
            .padding(.top,20)
            .padding(.leading,20)
            .padding(.trailing,20)
            
        }
       
        .padding(.top,40)
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
            
            
            
           
        }
            
            
            HalfASheetFilter(isPresented: $addFilter){
                
                VStack{
                    HStack{
                        Text("Filter Your Search")
                        Spacer()
                    }
                    .padding(.top)
                    
                    HStack{
                        
                        TextField("Search",text: self.$searchTextFilter)
                            .foregroundColor(.red)
                        
                        
                     
                            Button(action: {
                                self.addFilter = false
                                self.toSearch = true
                            }, label: {
                                Image(systemName: "magnifyingglass")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width:20,height: 20)
                                    .foregroundColor(.red)
                          
                            })
                        
                      
                           
                        
                        
                    }
                    .padding(15)
                    .background(RoundedRectangle(cornerRadius: 10).strokeBorder(.red).frame(width: UIScreen.widthBlockSize*90))
                    .padding(.top,10)
                    .padding(.leading,20)
                    .padding(.trailing,20)
                    
                    
                    
                    Text("Selext Type")
                      .padding(.top,20)
                      .frame(maxWidth: .infinity, alignment: .leading)
                      
                      .padding(.bottom,-5)
                    
                      
                    TextField("Body parts, Engine parts, etc",text:$selectType)
                        .foregroundColor(AppColors.redGradientColor1)
                      .padding(.vertical, 10)
                      .autocapitalization(.none)
                      .background(Rectangle().frame(width:UIScreen.widthBlockSize*90, height: 1).padding(.top, 40))
                      .foregroundColor(.black)
                      
                      .overlay(HStack{
                        Spacer()
                       
                          Menu(content:{
                              Button(action: {}, label: {
                                  Text("Body parts")
                              })
                              
                              Button(action: {}, label: {
                                  Text("Engine parts")
                              })
                              
                          }, label:{
                              Image("dropdown menu 2")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 20, height: 20)
                                    .padding()
                          })
                          
                          
                      })
                    
                    HStack{
                        Text("Price Range")
                        Spacer()
                    }
                    .padding(.top)
                    
                    SeekBar(lable: "$", maxRange: 5000, color: AppColors.redGradientColor2, value: self.$distanceValue)
                        
                        .padding(.bottom)
                    
                    
                    
                    HStack{
                        Text("Rating")
                        Spacer()
                    }
                    
                    HStack{
                        
                        HStack{
                            Text("1")
                            
                            Image("Star")
                        }
                        .padding()
                            .background(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.3)))
                        
                        HStack{
                            Text("2")
                            
                            Image("Star")
                        }
                        .padding()
                            .background(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.3)))
                        
                        HStack{
                            Text("3")
                            
                            Image("Star")
                        }
                        .padding()
                            .background(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.3)))
                        
                        
                        HStack{
                            Text("4")
                            
                            Image("Star")
                        }
                        .padding()
                            .background(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.3)))
                        
                        
                        HStack{
                            Text("5")
                            
                            Image("Star")
                        }
                        .padding()
                            .background(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.3)))
                        
                        
                        
                        
                        
                        
                    }
                    
                    
                    Button(action: {
                        self.addFilter = false
                        self.toSearch = true
                    }, label: {
                        Text("Apply Filter")
                            .font(AppFonts.semiBold_16)
                            .fontWeight(.medium)
                            .foregroundColor(.white)
                            .frame(width: UIScreen.widthBlockSize*90, height: UIScreen.heightBlockSize*7)
                            .background(RoundedRectangle(cornerRadius: 50).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                            .padding(.top)
                            .padding(.bottom)
                    })
                       
                    
                
                    
                    
                    
                    
                    
                    
                }
            }
            .height(.proportional(0.60))
            .closeButtonColor(UIColor.gray)
            .backgroundColor(UIColor.white)

            
        }.edgesIgnoringSafeArea(.all)
            .navigationBarHidden(true)
    }
}



struct EventsCardEvents : View {
    @State var eventDetails = false
    
    var body: some View {
        ZStack{
            
            NavigationLink(destination: Event_Details_Other_Events(), isActive: self.$eventDetails){
                EmptyView()
            }
          
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
                        self.eventDetails = true
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
