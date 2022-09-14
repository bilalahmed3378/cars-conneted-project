//
//  Add your Car Screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 19/08/2022.
//

import SwiftUI

struct Add_your_Car_Screen: View {
    
    @State var date = Date()
    
    @State var brand = ""
    @State var model = ""
    @State var color = ""
    @State var engine = ""
    @State var type = ""
    @State var year = ""
    @State var description = ""
    @Environment(\.presentationMode) var presentaionMode
    @State var toHome = false
    
    @State var showSheet = false
    
    @State var photos : Array<Image> = []
    
    @State private var selection = "Year"
    
    @State private var selection2 = "Type"
    
    let colors = ["Sedan", "Sports", "SUV"]
    
    var body: some View {
        ZStack{
            
            NavigationLink(destination: MainTabContainer(), isActive: $toHome){
                EmptyView()
            }
           
                VStack{
                    HStack{
                        
                    Image("Group 2-2")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: UIScreen.widthBlockSize*50, height: UIScreen.heightBlockSize*50)
                        
                        Spacer()
                        
                    }
                    
                    HStack{
                        Spacer()
                        Image("6-red-r8-audi-png-car-image 1")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: UIScreen.widthBlockSize*80, height: UIScreen.heightBlockSize*30)
                    }
                    
                    Spacer()
                }.edgesIgnoringSafeArea(.all)
                    
            ScrollView(.vertical, showsIndicators: false){
                VStack(alignment: .leading){
               
                    HStack{
                        Button(action: {
                            self.presentaionMode.wrappedValue.dismiss()
                        }, label: {
                            
                            Image("Icons-2")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 35, height: 35)
                        })
                       
                        
                        Spacer()
                        
                       
                       
                    }
                    .padding()
                
                    
                    VStack(alignment: .leading){
                        
                HStack{
                    Text("Add your Car")
                        .font(AppFonts.semiBold_24)
                        
                        .overlay((LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                        .mask( Text("Add your Car")
                            .font(AppFonts.semiBold_24)
                            )
                    
                    Spacer()
                }
               
                Text("Add your car and provide us required deatils to setup in your garage")
                    .font(AppFonts.regular_14)
                    .padding(.top)
                        
                    }.padding(.leading)
                        .padding(.trailing)
                    
                    Group{
                    VStack{
                        
                Text("Brand")
                  .padding(.top,20)
                  .frame(maxWidth: .infinity, alignment: .leading)
                 .padding(.bottom,-5)
                
                  
                TextField("Honda",text:$brand)
                    .foregroundColor(AppColors.redGradientColor1)
                  .padding(.vertical, 10)
                  .autocapitalization(.none)
                  .background(Rectangle().frame(height: 1).padding(.top, 30))
                  .foregroundColor(.black)
                 
                        
                    }.padding(.leading)
                            .padding(.trailing)
                    
                    VStack{
                        
                Text("Model")
                  .padding(.top,20)
                  .frame(maxWidth: .infinity, alignment: .leading)
                 .padding(.bottom,-5)
                
                  
                TextField("Civic",text:$model)
                    .foregroundColor(AppColors.redGradientColor1)
                  .padding(.vertical, 10)
                  .autocapitalization(.none)
                  .background(Rectangle().frame(height: 1).padding(.top, 30))
                  .foregroundColor(.black)
                 
                        
                    }.padding(.leading)
                            .padding(.trailing)
                    
                    VStack{
                        
                Text("Color")
                  .padding(.top,20)
                  .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom,-5)
                
                  
                TextField("Black",text:$color)
                    .foregroundColor(AppColors.redGradientColor1)
                  .padding(.vertical, 10)
                  .autocapitalization(.none)
                  .background(Rectangle().frame(height: 1).padding(.top, 30))
                  .foregroundColor(.black)
                       
                    }.padding(.leading)
                            .padding(.trailing)
                    
                    VStack{
                        
                Text("Engine")
                  .padding(.top,20)
                  .frame(maxWidth: .infinity, alignment: .leading)
                  .padding(.bottom,-5)
                
                  
                TextField("2000 CC",text:$engine)
                    .foregroundColor(AppColors.redGradientColor1)
                  .padding(.vertical, 10)
                  .autocapitalization(.none)
                  .background(Rectangle().frame(height: 1).padding(.top, 30))
                  .foregroundColor(.black)
                        
                    }.padding(.leading)
                            .padding(.trailing)
                    
                    VStack{
                        
                Text("Type")
                  .padding(.top,20)
                  .frame(maxWidth: .infinity, alignment: .leading)
                  .padding(.bottom,-5)
                
                  
                TextField("Sedan, Sports, Etc",text:$type)
                    .foregroundColor(AppColors.redGradientColor1)
                  .padding(.vertical, 10)
                  .autocapitalization(.none)
                  .background(Rectangle().frame(height: 1).padding(.top, 30))
                  .foregroundColor(.black)
                  .overlay(HStack{
                    Spacer()
                  
                      Menu(content: {
                          
                          Button(action: {}, label: {
                              Text("SUV")
                          })
                         
                          Button(action: {}, label: {
                              Text("Sports")
                          })
                          
                          Button(action: {}, label: {
                              Text("Sedan")
                          })
                        
                          
                       
                          
                      }, label: {
                          Image("dropdown menu 2")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 20, height: 20)
                                .padding()
                      })
                     
                      
                  })
                        
                    }.padding(.leading)
                            .padding(.trailing)
                    
                    VStack{
                        
//                    
                        
                Text("Year")
                  .padding(.top,20)
                  .frame(maxWidth: .infinity, alignment: .leading)
                  .padding(.bottom,-5)
                
                  
                TextField("2020",text:$year)
                    .foregroundColor(AppColors.redGradientColor1)
                  .padding(.vertical, 10)
                  .autocapitalization(.none)
                  .background(Rectangle().frame(height: 1).padding(.top, 30))
                  .foregroundColor(.black)
                  .overlay(HStack{
                    Spacer()
                   
                      
                        
                               
                      Menu(content: {
                         
                          Group{
                          Button(action: {}, label: {
                              Text("1970")
                          })
                          
                          Button(action: {}, label: {
                              Text("1971")
                          })
                          
                          Button(action: {}, label: {
                              Text("1972")
                          })
                          
                          Button(action: {}, label: {
                              Text("1973")
                              
                              
                          })
                          
                          Button(action: {}, label: {
                              Text("1974")
                          })
                          
                          Button(action: {}, label: {
                              Text("1975")
                          })
                              
                          }
                          
                          Group{
                          Button(action: {}, label: {
                              Text("1976")
                          })
                          
                          Button(action: {}, label: {
                              Text("1977")
                          })
                          
                          Button(action: {}, label: {
                              Text("1978")
                          })
                          
                          Button(action: {}, label: {
                              Text("1979")
                          })
                          
                          Button(action: {}, label: {
                              Text("1980")
                          })
                          
                          Button(action: {}, label: {
                              Text("1981")
                          })
                          Button(action: {}, label: {
                              Text("1982")
                          })
                          Button(action: {}, label: {
                              Text("1983")
                          })
                          
                          Button(action: {}, label: {
                              Text("1984")
                          })
                              
                          }
                          
                          Group{
                          Button(action: {}, label: {
                              Text("1985")
                          })
                          
                          Button(action: {}, label: {
                              Text("1986")
                          })
                          
                          Button(action: {}, label: {
                              Text("1987")
                          })
                          
                          Button(action: {}, label: {
                              Text("1988")
                          })
                          
                          Button(action: {}, label: {
                              Text("1989")
                          })
                          
                          Button(action: {}, label: {
                              Text("1990")
                          })
                          
                          Button(action: {}, label: {
                              Text("1991")
                          })
                          
                          Button(action: {}, label: {
                              Text("1992")
                          })
                          
                          Button(action: {}, label: {
                              Text("1993")
                          })
                              
                          }
                          
                          Group{
                          Button(action: {}, label: {
                              Text("1994")
                          })
                          
                          Button(action: {}, label: {
                              Text("1995")
                          })
                          
                          Button(action: {}, label: {
                              Text("1996")
                          })
                          
                          Button(action: {}, label: {
                              Text("1997")
                          })
                          
                          Button(action: {}, label: {
                              Text("1998")
                          })
                          
                          Button(action: {}, label: {
                              Text("1999")
                          })
                          
                          Button(action: {}, label: {
                              Text("2000")
                          })
                          
                          Button(action: {}, label: {
                              Text("2001")
                          })
                          
                          Button(action: {}, label: {
                              Text("2002")
                          })
                              
                          }
                          
                          Group{
                          Button(action: {}, label: {
                              Text("2003")
                          })
                          
                          Button(action: {}, label: {
                              Text("2004")
                          })
                          
                          Button(action: {}, label: {
                              Text("2005")
                          })
                          
                          Button(action: {}, label: {
                              Text("2006")
                          })
                          
                          Button(action: {}, label: {
                              Text("2007")
                          })
                          
                          Button(action: {}, label: {
                              Text("2008")
                          })
                          
                          Button(action: {}, label: {
                              Text("2009")
                          })
                          Button(action: {}, label: {
                              Text("2010")
                          })
                          
                          Button(action: {}, label: {
                              Text("2011")
                          })
                              
                          }
                          
                          Group{
                          Button(action: {}, label: {
                              Text("2012")
                          })
                          
                          Button(action: {}, label: {
                              Text("2013")
                          })
                          
                          Button(action: {}, label: {
                              Text("2014")
                          })
                          
                          Button(action: {}, label: {
                              Text("2015")
                          })
                          
                          Button(action: {}, label: {
                              Text("2016")
                          })
                          
                          Button(action: {}, label: {
                              Text("2017")
                          })
                          
                          Button(action: {}, label: {
                              Text("2018")
                          })
                          
                          Button(action: {}, label: {
                              Text("2019")
                          })
                          
                          Button(action: {}, label: {
                              Text("2020")
                          })
                          
                          Button(action: {}, label: {
                              Text("2021")
                          })
                          }
                          Button(action: {}, label: {
                              Text("2022")
                          })
                          
          
                      }, label: {
                          Image("bxs_calendar-event")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 24, height: 24)
                                .padding()
                      })
                                  
                    
                    
                         
                  })
                        
                    }.padding(.leading)
                            .padding(.trailing)
                        
                    }
                    
                    VStack{
                        
                Text("Description")
                  .padding(.top,20)
                  .frame(maxWidth: .infinity, alignment: .leading)
                  .padding(.bottom,-5)
                
                  
                TextField("Car Description",text:$description)
                    .foregroundColor(AppColors.redGradientColor1)
                  .padding(.vertical, 10)
                  .autocapitalization(.none)
                  .background(Rectangle().frame(height: 1).padding(.top, 30))
                  .foregroundColor(.black)
                        
                    }.padding(.leading)
                        .padding(.trailing)
                    
                  
                    if(!self.photos.isEmpty){
                      
                        ForEach(0...(self.photos.count-1) ,id: \.self){ index in
                            
                            
                            self.photos[index]
                                .resizable()
                                .aspectRatio( contentMode: .fill)
                                .frame(width: UIScreen.widthBlockSize*90, height: UIScreen.heightBlockSize*25)
                                .cornerRadius(8)
                                .overlay(
                                    VStack{
                                       
                                        
                                        HStack{
                                            Spacer()
                                            Image(systemName: "minus")
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .foregroundColor(.white)
                                                .padding(5)
                                                .frame(width: 15, height: 15)
                                                .background(Circle()
                                                    .fill(.red))
                                                .offset(x: 5, y: -5)
                                                .onTapGesture{
                                                    self.photos.remove(at: index)
                                                }
                                            
                                            
                                           
                                        }
                                        Spacer()
                                    }
                                    
                                )
                            
                            
                        }.padding(.leading)
                            .padding(.trailing)
                            .padding(.top)
                    }
                
                    
                    HStack{
                        Spacer()
                    Image("add photo image")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: UIScreen.widthBlockSize*90, height: UIScreen.heightBlockSize*10)
                       .onTapGesture{
                            self.showSheet = true
                        }
                        Spacer()
                    }.padding(.leading)
                        .padding(.trailing)
                    
                    
                    HStack{
                        Spacer()
                Button(action: {
                    self.toHome = true
                }, label: {
                    Text("Save to Garage")
                        .font(AppFonts.semiBold_16)
                        .fontWeight(.medium)
                        .foregroundColor(.white)
                        .frame(width: UIScreen.widthBlockSize*90, height: UIScreen.heightBlockSize*7)
                        .background(RoundedRectangle(cornerRadius: 50).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                })
                .padding(.top)
                        Spacer()
                    }
                
                
                    Spacer()
                }
            
                    
            }
            
         
           
           
        }.sheet(isPresented: self.$showSheet) {
            
            ImagePicker(sourceType: .photoLibrary) { image in
               
                    self.photos.append(Image(uiImage: image))
                
            }
            
            
            }
        .navigationBarHidden(true)
    }
}

struct Add_your_Car_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Add_your_Car_Screen()
    }
}
