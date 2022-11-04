//
//  My Garage My View.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 22/08/2022.
//

import SwiftUI

struct My_Garage_My_View: View {
    @Environment(\.presentationMode) var presentaionMode
    
   
    @State var toEditGarage =  false
    
    @State var toAddCar =  false
    
    @State var showDeleteDialog : Bool = false
    
    @State var showDeleteDialog2 : Bool = false
    
    
    var body: some View {
        ZStack{
            VStack{
                
                NavigationLink(destination: Edit_Garage_Screen(), isActive: self.$toEditGarage){
                    EmptyView()
                }
                
                NavigationLink(destination: Add_your_Car_Screen(), isActive: self.$toAddCar){
                    EmptyView()
                }
                
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
                    
                    Text("My Virual Garage")
                        .font(AppFonts.medium_18)
                    
                    Spacer()
                    
                    Menu(content: {
                        
                        Button(action: {
                            self.toAddCar = true
                        }, label: {
                            
                            Image("add new car")
                            
                            Text("Add New Car")
                                .font(AppFonts.regular_14)
                            
                            
                            
                        })
                        
                        Button(action: {
                            self.toEditGarage = true
                        }, label: {
                            
                            Image("carbon_edit")
                            
                            Text("Edit")
                                .font(AppFonts.regular_14)
                            
                        })
                        
                        Button(action: {
                            self.showDeleteDialog = true
                        }, label: {
                            
                            Image("delete black")
                            
                            
                            Text("Delete Garage")
                                .font(AppFonts.regular_14)
                                .foregroundColor(AppColors.redGradientColor1)
                            
                        })
                        
                        
                        
                        
                        
                    }, label: {
                        
                        Image("doted Icons")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 35, height: 35)
                        
                        
                    })
                    
                }.padding()
                
                ScrollView(.vertical, showsIndicators: false){
                    
                    
                    
                    
                    HStack{
                        Text("5 cars in Garage")
                            .font(AppFonts.regular_18)
                        Spacer()
                    }
                    .padding(.leading)
                    .padding(.trailing)
                    .padding(.bottom,10)
                    
                    
                    HStack{
                        Text("Lorem ipsum dolor sit amet, \nconsectetur adipiscing elit. Aliqueto.")
                            .font(AppFonts.regular_12)
                        Spacer()
                    }
                    .padding(.leading)
                    .padding(.trailing)
                    
                    
                    
                    LazyVStack{
                        ForEach (0...3 , id : \.self){
                            index in
                            myGarage()
                        }
                        
                    }
                    
                    Text("View more")
                        .foregroundColor(AppColors.redGradientColor1)
                        .font(AppFonts.regular_16)
                    
                }
                
                
                
                
                
            }.edgesIgnoringSafeArea(.bottom)
                .navigationBarHidden(true)
            
           
            
                if(self.showDeleteDialog){
                    
                    Dialog(cancelable: false, isShowing: self.$showDeleteDialog){
                        
                        VStack{
                            
                            
                            Image(systemName : "exclamationmark.triangle.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 40, height: 40)
                                .foregroundColor(AppColors.redGradientColor1)
                            
                            Text("Are you sure you want to delete Garage?")
                                .font(AppFonts.regular_14)
                                .foregroundColor(Color.black)
                                .padding(.top,10)
                            
                           
                         
                                
                                HStack{
                                    
                                    Button(action: {
                                        withAnimation{
                                            self.showDeleteDialog = false
                                        }
                                    }){
                                        HStack{
                                            Spacer()
                                            
                                            Text("Cancel")
                                                .font(AppFonts.regular_14)
                                                .foregroundColor(Color.white)
                                            
                                            Spacer()
                                            
                                        }
                                        .padding()
                                        .background(RoundedRectangle(cornerRadius: 10).fill(Color.black))
                                        .padding(.trailing,10)
                                    }
                                    
                                    Button(action: {
                                        
                                        withAnimation{
                                          
                                        }
                                        
                                    }){
                                        HStack{
                                            Spacer()
                                            
                                            Text("Yes")
                                                .font(AppFonts.regular_14)
                                                .foregroundColor(Color.white)
                                            
                                            Spacer()
                                        }
                                        .padding(15)
                                        .background(RoundedRectangle(cornerRadius: 10).fill(AppColors.redGradientColor1))
                                        .padding(.leading,10)
                                    }
                                }
                                .padding(.top,10)
                                
                            
                            
                           
                            
                        }
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color.white).shadow(radius: 8))
                        .padding(.leading,20)
                        .padding(.trailing,20)
                        
                    }
                    .edgesIgnoringSafeArea(.all)
                }
            
            if(self.showDeleteDialog2){
                
                Dialog(cancelable: false, isShowing: self.$showDeleteDialog){
                    
                    VStack{
                        
                        
                        Image(systemName : "exclamationmark.triangle.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 40, height: 40)
                            .foregroundColor(AppColors.redGradientColor1)
                        
                        Text("Delete selected vehicle?")
                            .font(AppFonts.regular_14)
                            .foregroundColor(Color.black)
                            .padding(.top,10)
                        
                       
                     
                            
                            HStack{
                                
                                Button(action: {
                                    withAnimation{
                                        self.showDeleteDialog2 = false
                                    }
                                }){
                                    HStack{
                                        Spacer()
                                        
                                        Text("Cancel")
                                            .font(AppFonts.regular_14)
                                            .foregroundColor(Color.white)
                                        
                                        Spacer()
                                        
                                    }
                                    .padding()
                                    .background(RoundedRectangle(cornerRadius: 10).fill(Color.black))
                                    .padding(.trailing,10)
                                }
                                
                                Button(action: {
                                    
                                    withAnimation{
                                      
                                    }
                                    
                                }){
                                    HStack{
                                        Spacer()
                                        
                                        Text("Yes")
                                            .font(AppFonts.regular_14)
                                            .foregroundColor(Color.white)
                                        
                                        Spacer()
                                    }
                                    .padding(15)
                                    .background(RoundedRectangle(cornerRadius: 10).fill(AppColors.redGradientColor1))
                                    .padding(.leading,10)
                                }
                            }
                            .padding(.top,10)
                            
                        
                        
                       
                        
                    }
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10).fill(Color.white).shadow(radius: 8))
                    .padding(.leading,20)
                    .padding(.trailing,20)
                    
                }
                .edgesIgnoringSafeArea(.all)
            }
                
                
           
        }
    }
}



struct myGarage : View {
    
    @State var toDeletedCar = false
    
    @State private var showingSheet = false
    
    @State var showingSheetComments = false
    
    var body : some View{
        
        VStack{
            
            NavigationLink(destination: Vehicle_Deleted_Screen(), isActive: self.$toDeletedCar){
                EmptyView()
            }
            
            ZStack{
                Image("unsplash_1ZhZpP91olQ-1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: UIScreen.widthBlockSize*90, height: 240)
                VStack{
                    HStack{
                        Spacer()
                        
                        Menu(content: {
                            
                            Button(action: {}, label: {
                                
                              Image("share")
                                
                                Text("Share")
                                    .font(AppFonts.regular_14)
                                
                              
                                
                            })
                                
                                Button(action: {}, label: {
                                    
                                    Image("carbon_edit")
                                    
                                    Text("Edit")
                                        .font(AppFonts.regular_14)
                                    
                                })
                                
                                Button(action: {
                                   
                                }, label: {
                                    
                                    Image("delete black")
                                    
                                    
                                    Text("Delete")
                                        .font(AppFonts.regular_14)
                                    
                                })
                            
                                
                            
                            
                            
                        }, label: {
                            
                            Image("doted icons-1")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 24, height: 24)
                                .padding()
                                .padding(.top)
                        })
                        
                        
                       
                    }
                    
                   Spacer()
                    HStack{
                        Text("Honda")
                            .font(AppFonts.semiBold_14)
                            .foregroundColor(.white)
                        Spacer()
                    }.padding()
                        .padding(.bottom,-30)
                    
                    
                    HStack{
                        Group{
                        Text("Vehicle")
                            .font(AppFonts.regular_12)
                            .foregroundColor(.white)
                        
                        Image("Ellipse 3")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 5, height: 5)
                            .padding(.leading,1)
                        
                        Text("Used")
                            .font(AppFonts.regular_12)
                            .foregroundColor(.white)
                        
                        Image("Ellipse 3")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 5, height: 5)
                            .padding(.leading,1)
                        
                        Text("2019")
                            .font(AppFonts.regular_12)
                            .foregroundColor(.white)
                        
                        Spacer()
                        }
                        Image("Ellipse 3")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 8, height: 8)
                        
                        Image("Ellipse 20")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 8, height: 8)
                        
                        Image("Ellipse 3")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 8, height: 8)
                        
                        Spacer()
                        
                        NavigationLink(destination: {
                            Car_Specification()
                        }, label: {
                            Text("view details")
                                .foregroundColor(.white)
                                .font(AppFonts.regular_12)
                            
                            Image("Vector-3")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 14, height: 14)
                            
                        })
                      
                        
                       
                    }.padding()
                        .padding(.bottom)
                }
                
            }.frame(width: UIScreen.widthBlockSize*90, height: UIScreen.heightBlockSize*30)
            
            VStack{
                
            HStack{
                
                Button(action: {
                    self.showingSheet = true
                }, label: {
                    Image("Group 7367")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 18, height: 18)
                    
                    Image("Group 7369")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 18, height: 18)
                        .offset(x: -10, y: 0)
                    
                    Text("Arsalan and 20 other")
                        .font(AppFonts.regular_12)
                        .foregroundColor(Color.gray)
                })
                .sheet(isPresented: $showingSheet){
                    whoLikedScreen()
                    
                }
                
                Spacer()
                
                Button(action: {
                    self.showingSheetComments = true
                }, label: {
                    Text("12 comments")
                        .font(AppFonts.regular_12)
                        .foregroundColor(Color.gray)
                    
                })
                .sheet(isPresented: $showingSheetComments){
                    commentsScreen()
                    
                }
                
            }.padding(.leading,26)
                .padding(.trailing,26)
            
            Divider()
                .padding(.leading,26)
                .padding(.trailing,26)
            
            HStack{
                HStack{
                    Image("ei_like")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 26, height: 26)
                    
                    Text("Like")
                        .font(AppFonts.regular_12)
                        .foregroundColor(Color.gray)
                    
                    
                }
                
                Spacer()
                HStack{
                   
                    
                    Button(action: {
                        self.showingSheetComments = true
                    }, label: {
                        
                        Image("ant-design_comment-outlined")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 26, height: 26)
                        
                        Text("12 comments")
                            .font(AppFonts.regular_12)
                            .foregroundColor(Color.gray)
                        
                    })
                    .sheet(isPresented: $showingSheetComments){
                        commentsScreen()
                        
                    }
                    
                }
                Spacer()
                HStack{
                    Image("ion_share-social-sharp")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 26, height: 26)
                    
                    Text("Share")
                        .font(AppFonts.regular_12)
                        .foregroundColor(Color.gray)
                }
               
               
                
                
            }.padding(.leading,26)
                .padding(.trailing,26)
                
            }
            
            
        }.padding(.top)
            .padding(.bottom)
            .background(RoundedRectangle(cornerRadius: 0).fill(.gray.opacity(0.2)))
        
        
        
        
    }
    
}
