//
//  Create Event step1 Screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 26/08/2022.
//

import SwiftUI

struct Create_Event_step1_Screen: View {
    @Environment(\.presentationMode) var presentaionMode
    @State var eventName = ""
    @State var eventCategory = ""
    @State var subCategory = ""
    @State var description = ""
    @State var startDate = ""
    @State var endDate = ""
    @State var startTime = ""
    @State var endTime = ""
    @State var location = ""
    @State var attendiesLimit = ""
    @State var attendiesTicket = ""
    @State var registrationPrice = ""
    @State var videoUrl = ""
    @State var websiteUrl = ""
    @State var otherUrl = ""
    
    @State var eventType = true
    @State var privacy = true
    @State var recurringEvent = true
    @State var eventTypeMoney = true
    
    
    
    var body: some View {
        VStack{
           
            ScrollView(.vertical, showsIndicators: false){
            
            Group{
                HStack{
                    Button(action: {}, label: {
                        
                        Image("Icons-2")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 35, height: 35)
                    })
                   
                    
                    Spacer()
                    
                   
                   
                }
                .padding(.leading)
                .padding(.trailing)
            
            VStack(alignment: .leading){
            HStack{
                Text("Create your event")
                    .font(AppFonts.SemiBold_20)
                    .overlay((LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                    .mask( Text("Create your event")
                        .font(AppFonts.SemiBold_20)
                        )
                
                Spacer()
            }
            .padding(.bottom)
            
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquet tincidunt viverra nunc scelerisque gravida odio.")
                .foregroundColor(.gray)
                .font(AppFonts.regular_14)
            }
            .padding()
            .padding(.bottom,-20)
         
            
            HStack{
                ZStack{
                Image("Rectangle 4485")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 90, height: 90)
                    
                    Image("minus icon")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 18, height: 18)
                        .offset(x: 40, y: -35)
                }
                Spacer()
                ZStack{
                Image("Rectangle 4485")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 90, height: 90)
                    
                    Image("minus icon")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 18, height: 18)
                        .offset(x: 40, y: -35)
                }
                Spacer()
                
                Image("Frame 40-2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 90, height: 90)
                
            }
            .padding()
            .background(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.1)))
            .padding()
            
            
            
            HStack{
                Text("Event Name")
                    .font(AppFonts.regular_12)
                
                Spacer()
            }
            .padding(.leading)
            .padding(.trailing)
           
            
            HStack{
                TextField("Ace Classic Club",text:$eventName)
                    .foregroundColor(.gray)
                    .font(AppFonts.regular_14)
                  .padding(.vertical, 10)
                  .autocapitalization(.none)
                  .background(Rectangle().frame(height: 1).padding(.top, 40))
                  .foregroundColor(.gray)
                
            }
            .padding(.leading)
            .padding(.trailing)
            .padding(.bottom)
            
                Group{
            HStack{
                Text("Event Category")
                    .font(AppFonts.regular_12)
                
                Spacer()
            }
            .padding(.leading)
            .padding(.trailing)
           
            
            HStack{
                TextField("Ace Classic club",text:$eventCategory)
                    .foregroundColor(.gray)
                    .font(AppFonts.regular_14)
                  .padding(.vertical, 10)
                  .autocapitalization(.none)
                  .background(Rectangle().frame(height: 1).padding(.top, 40))
                  .foregroundColor(.gray)
                  .overlay(HStack{
                    Spacer()
                      
                          Image("dropdown menu 2")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 20, height: 20)
                                .padding()
                     
                  })
                
            }
            .padding(.leading)
            .padding(.trailing)
            .padding(.bottom)
                
                HStack{
                    Text("SubCategory")
                        .font(AppFonts.regular_12)
                    
                    Spacer()
                }
                .padding(.leading)
                .padding(.trailing)
               
                
                HStack{
                    TextField("Ace Classic club",text:$subCategory)
                        .foregroundColor(.gray)
                        .font(AppFonts.regular_14)
                      .padding(.vertical, 10)
                      .autocapitalization(.none)
                      .background(Rectangle().frame(height: 1).padding(.top, 40))
                      .foregroundColor(.gray)
                      .overlay(HStack{
                        Spacer()
                          
                              Image("dropdown menu 2")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 20, height: 20)
                                    .padding()
                         
                      })
                    
                }
                .padding(.leading)
                .padding(.trailing)
                .padding(.bottom)
                    
                    HStack{
                        Text("Description")
                            .font(AppFonts.regular_12)
                        
                        Spacer()
                    }
                    .padding(.leading)
                    .padding(.trailing)
                   
                    
                    HStack{
                        TextField("Write description here",text:$description)
                            .foregroundColor(.gray)
                            .font(AppFonts.regular_14)
                          .padding(.vertical, 10)
                          .autocapitalization(.none)
                          .background(Rectangle().frame(height: 1).padding(.top, 40))
                          .foregroundColor(.gray)
                          .overlay(HStack{
                            Spacer()
                              
                                Text("63/2000")
                                  .foregroundColor(.gray)
                                  .font(AppFonts.regular_12)
                             
                          })
                        
                    }
                    .padding(.leading)
                    .padding(.trailing)
                    .padding(.bottom)
            
            HStack{
                Text("Start Date")
                    .font(AppFonts.regular_12)
                
                Spacer()
            }
            .padding(.leading)
            .padding(.trailing)
           
            
            HStack{
                TextField("00/00/0000",text:$startDate)
                    .foregroundColor(.gray)
                    .font(AppFonts.regular_14)
                  .padding(.vertical, 10)
                  .autocapitalization(.none)
                  .background(Rectangle().frame(height: 1).padding(.top, 40))
                  .foregroundColor(.gray)
                  .overlay(HStack{
                    Spacer()
                      
                          Image("calander black")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 20, height: 20)
                                .padding()
                     
                  })
                
                
            }
            .padding(.leading)
            .padding(.trailing)
            .padding(.bottom)
                    
                }
            }
            ///
            ///
            ///
            
            Group{
                
            
            HStack{
                Text("End Date")
                    .font(AppFonts.regular_12)
                
                Spacer()
            }
            .padding(.leading)
            .padding(.trailing)
           
            
            HStack{
                TextField("00/00/0000",text:$endDate)
                    .foregroundColor(.gray)
                    .font(AppFonts.regular_14)
                  .padding(.vertical, 10)
                  .autocapitalization(.none)
                  .background(Rectangle().frame(height: 1).padding(.top, 40))
                  .foregroundColor(.gray)
                  .overlay(HStack{
                    Spacer()
                      
                          Image("calander black")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 20, height: 20)
                                .padding()
                     
                  })
                
            }
            .padding(.leading)
            .padding(.trailing)
            .padding(.bottom)
            
            HStack{
                Text("Start Time")
                    .font(AppFonts.regular_12)
                
                Spacer()
            }
            .padding(.leading)
            .padding(.trailing)
           
            
            HStack{
                TextField("9:00 am",text:$startTime)
                    .foregroundColor(.gray)
                    .font(AppFonts.regular_14)
                  .padding(.vertical, 10)
                  .autocapitalization(.none)
                  .background(Rectangle().frame(height: 1).padding(.top, 40))
                  .foregroundColor(.gray)
                  .overlay(HStack{
                    Spacer()
                      
                          Image("time black")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 20, height: 20)
                                .padding()
                     
                  })
                
            }
            .padding(.leading)
            .padding(.trailing)
            .padding(.bottom)
            
            
            HStack{
                Text("End Time")
                    .font(AppFonts.regular_12)
                
                Spacer()
            }
            .padding(.leading)
            .padding(.trailing)
           
            
            HStack{
                TextField("9:00 am",text:$endTime)
                    .foregroundColor(.gray)
                    .font(AppFonts.regular_14)
                  .padding(.vertical, 10)
                  .autocapitalization(.none)
                  .background(Rectangle().frame(height: 1).padding(.top, 40))
                  .foregroundColor(.gray)
                  .overlay(HStack{
                    Spacer()
                      
                          Image("time black")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 20, height: 20)
                                .padding()
                     
                  })
                
            }
            .padding(.leading)
            .padding(.trailing)
            .padding(.bottom)
            
            HStack{
                Text("Location")
                    .font(AppFonts.regular_12)
                
                Spacer()
            }
            .padding(.leading)
            .padding(.trailing)
           
            
            HStack{
                TextField("Address",text:$location)
                    .foregroundColor(.gray)
                    .font(AppFonts.regular_14)
                  .padding(.vertical, 10)
                  .autocapitalization(.none)
                  .background(Rectangle().frame(height: 1).padding(.top, 40))
                  .foregroundColor(.gray)
                
            }
            .padding(.leading)
            .padding(.trailing)
            .padding(.bottom)
            
            }
            
        ///
                Group{
            HStack{
                Text("Attendies Limit")
                    .font(AppFonts.regular_12)
                
                Spacer()
            }
            .padding(.leading)
            .padding(.trailing)
           
            
            HStack{
                TextField("500",text:$attendiesLimit)
                    .foregroundColor(.gray)
                    .font(AppFonts.regular_14)
                  .padding(.vertical, 10)
                  .autocapitalization(.none)
                  .background(Rectangle().frame(height: 1).padding(.top, 40))
                  .foregroundColor(.gray)
                
            }
            .padding(.leading)
            .padding(.trailing)
            .padding(.bottom)
            
            HStack{
                Text("Attendies Ticket")
                    .font(AppFonts.regular_12)
                
                Spacer()
            }
            .padding(.leading)
            .padding(.trailing)
           
            
            HStack{
                TextField("500",text:$attendiesTicket)
                    .foregroundColor(.gray)
                    .font(AppFonts.regular_14)
                  .padding(.vertical, 10)
                  .autocapitalization(.none)
                  .background(Rectangle().frame(height: 1).padding(.top, 40))
                  .foregroundColor(.gray)
                
            }
            .padding(.leading)
            .padding(.trailing)
            .padding(.bottom)
            
            
                VStack{
                    HStack{
                        Text("Event Type")
                            .font(AppFonts.semiBold_12)
                        Spacer()
                    }.padding(.bottom)
                    
                    HStack{
                        
                        Button(action: {
                            self.eventType = true
                        }, label: {
                            if(self.eventType){
                                
                            Image("Group 7139")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 30, height: 30)
                            }
                            
                            else{
                                Image("Rectangle 75")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 30, height: 30)
                            }
                        })
                        
                        if(self.eventType){
                        Text("Physical")
                            .foregroundColor(AppColors.redGradientColor1)
                            .font(AppFonts.medium_16)
                        }
                        else{
                            Text("Physical")
                                .foregroundColor(.gray)
                                .font(AppFonts.medium_16)
                        }
                        
                        Spacer()
                        
                        Button(action: {
                            self.eventType = false
                        }, label: {
                            if !(self.eventType){
                                Image("Group 7139")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 30, height: 30)
                            }
                            else{
                                Image("Rectangle 75")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 30, height: 30)
                            }
                        })
                       
                        
                        if !(self.eventType){
                            Text("Online")
                                .foregroundColor(AppColors.redGradientColor1)
                                .font(AppFonts.medium_16)
                        }
                        
                        else{
                            Text("Online")
                                .foregroundColor(.gray)
                                .font(AppFonts.medium_16)
                        }
                       
                    }
                }
                .padding()
                .background(RoundedRectangle(cornerRadius: 0).strokeBorder(.gray).shadow(radius: 2))
                .padding()
                
                
                VStack{
                    HStack{
                        Text("Privacy")
                            .font(AppFonts.semiBold_12)
                        Spacer()
                    }.padding(.bottom)
                    
                    HStack{
                        
                        Button(action: {
                            self.privacy = true
                        }, label: {
                            if(self.privacy){
                            Image("Group 7139")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 30, height: 30)
                            }
                            
                            else{
                                Image("Rectangle 75")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 30, height: 30)
                            }
                        })
                       
                        if(self.privacy){
                        Text("Public")
                            .foregroundColor(AppColors.redGradientColor1)
                            .font(AppFonts.medium_16)
                            
                        }
                        else{
                            Text("Public")
                                .foregroundColor(.gray)
                                .font(AppFonts.medium_16)
                        }
                        
                        Spacer()
                        
                        Button(action: {
                            self.privacy = false
                        }, label: {
                            if !(self.privacy){
                            Image("Group 7139")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 30, height: 30)
                            }
                            else{
                                Image("Rectangle 75")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 30, height: 30)
                            }
                        })
                      
                        if !(self.privacy){
                        Text("Private")
                                .foregroundColor(AppColors.redGradientColor1)
                            .font(AppFonts.medium_16)
                        }
                        else{
                            Text("Private")
                                .foregroundColor(.gray)
                                .font(AppFonts.medium_16)
                        }
                        
                    }
                }
                .padding()
                .background(RoundedRectangle(cornerRadius: 0).strokeBorder(.gray).shadow(radius: 2))
                .padding()
                
                VStack{
                    HStack{
                        
                        Text("Recurring Event")
                            .font(AppFonts.semiBold_12)
                        Spacer()
                    }.padding(.bottom)
                    
                    HStack{
                        Button(action: {
                            self.recurringEvent = true
                        }, label: {
                            if(self.recurringEvent){
                            Image("Group 7139")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 30, height: 30)
                            }
                            else{
                                Image("Rectangle 75")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 30, height: 30)
                            }
                        })
                       
                        if(self.recurringEvent){
                        Text("Yes")
                            .foregroundColor(AppColors.redGradientColor1)
                            .font(AppFonts.medium_16)
                        }
                        else{
                            Text("Yes")
                                .foregroundColor(.gray)
                                .font(AppFonts.medium_16)
                            }
                        
                
                        Spacer()
                        
                    Button(action: {
                        self.recurringEvent = false
                    }, label: {
                        if !(self.recurringEvent){
                        Image("Group 7139")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30)
                        }
                        else{
                            Image("Rectangle 75")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 30, height: 30)
                        }
                    })
                       
                    if !(self.recurringEvent){
                        Text("No")
                            .foregroundColor(AppColors.redGradientColor1)
                            .font(AppFonts.medium_16)
                    }
                    else{
                        Text("No")
                            .foregroundColor(.gray)
                            .font(AppFonts.medium_16)
                    }
                }
                }
                .padding()
                .background(RoundedRectangle(cornerRadius: 0).strokeBorder(.gray).shadow(radius: 2))
                .padding()
                  
                
                }
                
                
                VStack{
                    HStack{
                        Text("Event Type")
                            .font(AppFonts.semiBold_12)
                        Spacer()
                    }.padding(.bottom)
                    
                    HStack{
                        Button(action: {
                            self.eventTypeMoney = true
                            
                        }, label: {
                            if(self.eventTypeMoney){
                            Image("Group 7139")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 30, height: 30)
                            }
                            else{
                                
                                Image("Rectangle 75")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 30, height: 30)
                            }
                        })
                      
                        if(self.eventTypeMoney){
                        Text("Paid")
                            .foregroundColor(AppColors.redGradientColor1)
                            .font(AppFonts.medium_16)
                        }
                        else{
                            Text("Paid")
                                .foregroundColor(.gray)
                                .font(AppFonts.medium_16)
                        }
                           
                        
                        Spacer()
                        Button(action: {
                            self.eventTypeMoney = false
                        }, label: {
                            if !(self.eventTypeMoney){
                            Image("Group 7139")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 30, height: 30)
                            }
                            else{
                                Image("Rectangle 75")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 30, height: 30)
                            }
                        })
                      
                        
                        if !(self.eventTypeMoney){
                        Text("Free")
                                .foregroundColor(AppColors.redGradientColor1)
                            .font(AppFonts.medium_16)
                        }
                        else{
                            Text("Free")
                                .foregroundColor(.gray)
                                .font(AppFonts.medium_16)
                        }
                    }
                }
                .padding()
                .background(RoundedRectangle(cornerRadius: 0).strokeBorder(.gray).shadow(radius: 2))
                .padding()
            
            
            Group{
            HStack{
                Text("Registration Price")
                    .font(AppFonts.regular_12)
                
                Spacer()
            }
            .padding(.leading)
            .padding(.trailing)
           
            
            HStack{
                TextField("$500",text:$registrationPrice)
                    .foregroundColor(.gray)
                    .font(AppFonts.regular_14)
                  .padding(.vertical, 10)
                  .autocapitalization(.none)
                  .background(Rectangle().frame(height: 1).padding(.top, 40))
                  .foregroundColor(.gray)
                
            }
            .padding(.leading)
            .padding(.trailing)
            .padding(.bottom)
            
            HStack{
                Text("Video URL")
                    .font(AppFonts.regular_12)
                
                Spacer()
            }
            .padding(.leading)
            .padding(.trailing)
           
            
            HStack{
                TextField("www.youtube.com",text:$videoUrl)
                    .foregroundColor(.gray)
                    .font(AppFonts.regular_14)
                  .padding(.vertical, 10)
                  .autocapitalization(.none)
                  .background(Rectangle().frame(height: 1).padding(.top, 40))
                  .foregroundColor(.gray)
                
            }
            .padding(.leading)
            .padding(.trailing)
            .padding(.bottom)

            HStack{
                Text("Website URL")
                    .font(AppFonts.regular_12)
                
                Spacer()
            }
            .padding(.leading)
            .padding(.trailing)
           
            
            HStack{
                TextField("www.youtube.com",text:$websiteUrl)
                    .foregroundColor(.gray)
                    .font(AppFonts.regular_14)
                  .padding(.vertical, 10)
                  .autocapitalization(.none)
                  .background(Rectangle().frame(height: 1).padding(.top, 40))
                  .foregroundColor(.gray)
                
            }
            .padding(.leading)
            .padding(.trailing)
            .padding(.bottom)
            
            HStack{
                Text("other URL")
                    .font(AppFonts.regular_12)
                
                Spacer()
            }
            .padding(.leading)
            .padding(.trailing)
           
            
            HStack{
                TextField("www.youtube.com",text:$otherUrl)
                    .foregroundColor(.gray)
                    .font(AppFonts.regular_14)
                  .padding(.vertical, 10)
                  .autocapitalization(.none)
                  .background(Rectangle().frame(height: 1).padding(.top, 40))
                  .foregroundColor(.gray)
                
            }
            .padding(.leading)
            .padding(.trailing)
            .padding(.bottom)

            }
            
            
            
            Spacer()
            
            Button(action: {}, label: {
                Text("Next")
                    .font(AppFonts.semiBold_16)
                    .fontWeight(.medium)
                    .foregroundColor(.white)
                    .frame(width: UIScreen.widthBlockSize*90, height: UIScreen.heightBlockSize*7)
                    .background(RoundedRectangle(cornerRadius: 50).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
            })
            .padding(.top)
            .padding(.bottom)
             
            }
        } .navigationBarHidden(true)
       
    }
}

struct Create_Event_step1_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Create_Event_step1_Screen()
    }
}
