//
//  Edit Garage Screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 23/08/2022.
//

import SwiftUI


struct Edit_Garage_Screen: View, MyLocationReceiver {
        
        @StateObject var updateGarageApi = UpdateGarageApi()
        @Environment(\.presentationMode) var presentaionMode

        @State var isPublic = true
        @State var garageName = ""
        @State var toAddCar = false
        
        @State var address : String = ""
        @State var latitude : Double = 0.0
        @State var longitude : Double = 0.0
        @State var showPlacePicker : Bool = false
        @State var showBottomSheet: Bool = false

        
        @State var showToast : Bool = false
        @State var toastMessage : String = ""
        let existingGarageData : viewGarageDataModel

        
        
        var body: some View {
            ZStack{
                
                NavigationLink(destination: Add_your_Car_Screen(), isActive: $toAddCar){
                    EmptyView()
                }
                
                VStack{
                    HStack{
                        Spacer()
                    Image("Group 2-3")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: UIScreen.widthBlockSize*50, height: UIScreen.heightBlockSize*50)
                    }
                    Spacer()
                    HStack{
                        Spacer()
                    Image("6-red-r8-audi-png-car-image 1")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: UIScreen.widthBlockSize*80, height: UIScreen.heightBlockSize*30)
                    }.padding(.bottom,40)
                    
                }.edgesIgnoringSafeArea(.top)
                   
            VStack{
               
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
                
               
                HStack{
                    Text("Update your Garage")
                        .font(AppFonts.semiBold_24)
                        .fontWeight(.semibold)
                        .overlay((LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                        .mask( Text("Update your Garage")
                            .font(AppFonts.semiBold_24)
                            .fontWeight(.semibold))
                    
                    Spacer()
                }
                .padding()
                
                VStack(alignment: .leading){
                    HStack{
                Text("Its time to setup your garage and add your beautiful cars collection. It will take a moment.")
                            .foregroundColor(AppColors.BlackColor)
                    .font(AppFonts.regular_14)
                        
                   Spacer()
                        
                    }.padding(.leading)
                        .padding(.trailing)
                }
                
                HStack{
                    Text("Visibility")
                        .foregroundColor(AppColors.BlackColor)
                        .font(AppFonts.regular_14)
                    
                    
                    Spacer()
                    
                }.padding()
                  
                
                HStack{
                    
                    HStack{
                        
                        Button{
                            
                            self.isPublic = true
                            
                        } label: {
                            
                            if (self.isPublic == true) {
                                
                                Image("Rectangle 75")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 30, height: 30)
                                
                            }
                            
                            else{
                                
                                Image("Group 7139")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 30, height: 30)
                                
                            }
                            
                        }
                        
                        
                        Text("Private")
                            .foregroundColor(AppColors.BlackColor)
                            .font(AppFonts.regular_16)
                        
                    }
                    
                    Spacer()
                    
                    HStack{
                        Button(action: {
                            self.isPublic = false
                        }, label: {
                            if(self.isPublic == false){
                                
                                Image("Rectangle 75")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 30, height: 30)
                                
                                
                            }
                            else{
                              
                                Image("Group 7139")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 30, height: 30)
                                
                            }
                            
                        })
                           
                                            
                        Text("Public")
                            .foregroundColor(AppColors.BlackColor)
                            .font(AppFonts.regular_16)
                            
                         
                    }
                    
                    Spacer()
                    
                }
                    .padding(.trailing)
                    .padding(.leading)
                    
                VStack{
                Text("Garage Name")
                        .foregroundColor(AppColors.BlackColor)
                  .padding(.top,20)
                  .frame(maxWidth: .infinity, alignment: .leading)
                 
                  
                    TextField("Enter your garage name",text:self.$garageName)
                    .foregroundColor(AppColors.redGradientColor1)
                  .padding(.vertical, 10)
                  .autocapitalization(.none)
                  .background(Rectangle().frame(height: 1).padding(.top, 30))
                  .foregroundColor(.black)
                }
                .padding(.trailing)
                .padding(.leading)
                
                
                VStack{
                    
                    HStack{
                        
                        Text("Location")
                            .padding(.top,20)
                        
                        Spacer()
                    }
                    
                    HStack{
                        
                        Text(self.address)
                        
                        Spacer()
                        
                    }
                    .padding()
                    .background(Rectangle().frame(height: 1).padding(.top, 30))
                    .padding(.vertical, 10)
                    .overlay(HStack{
                        Spacer()
                        Button(action: {
                            
                        }) {
                            Image("location Icons")
                        }
                    })
                    .onTapGesture{
                        withAnimation{
                            self.showPlacePicker = true
                        }
                    }
                    
                    
                    
                    
                    
                    
                } .padding(.trailing)
                    .padding(.leading)
                
           
                if(self.updateGarageApi.isLoading){
                    
                    ProgressView()
                        .padding()
                        .onDisappear{
                            if(self.updateGarageApi.isApiCallDone && self.updateGarageApi.isApiCallSuccessful){
                                
                                if(self.updateGarageApi.garageUpdateSuccessfully){
                                    self.toastMessage = "Garage Updated Successfully"
                                    self.showToast = true
                                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.8) {
                                        self.presentaionMode.wrappedValue.dismiss()
                                    }
                                }
                                
                                else {
                                    self.toastMessage = "Unable to setup garage"
                                    self.showToast = true
                                }
                                
                            }
                            else if(self.updateGarageApi.isApiCallDone && (!self.updateGarageApi.isApiCallSuccessful)){
                                self.toastMessage = "Unable to access internet. Please check you internet connection and try again."
                                self.showToast = true
                            }
                            
                            else{
                                
                                self.toastMessage = "something went wrong"
                                self.showToast = true
                                
                            }
                            
                        }

                }
                
                else{
                    
                    Button{

                        if (self.garageName.isEmpty){
                            
                            self.toastMessage = "Garage Name can't be empty"
                            self.showToast = true
                            
                        }
                        
                        else if (self.address.isEmpty){
                            
                            self.toastMessage = "Location Name can't be empty"
                            self.showToast = true
                            
                        }
                        
                        else{
                            
                            
                            self.updateGarageApi.updateGarage(garageName: self.garageName, isPublic: self.isPublic, lat: self.latitude, long: self.longitude, address: self.address)
                            
                        }
                            
                    } label: {
                        Text("Update")
                            .font(AppFonts.semiBold_16)
                            .fontWeight(.medium)
                            .foregroundColor(.white)
                            .frame(width: UIScreen.widthBlockSize*90, height: UIScreen.heightBlockSize*7)
                            .background(RoundedRectangle(cornerRadius: 50).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                    }
                    .padding(.top,30)
                    
                }
                
                    Spacer()
            }
            
                
                if(self.showPlacePicker){
                    ZStack {
                        
                        Rectangle().fill(Color.black.opacity(0.3))
                        
                        VStack{
                            
                            HStack{
                                
                                
                                
                                Text(self.address)
                                    .font(.system(size: 18))
                                //                                .foregroundColor(AppColors.textColor)
                                    .padding(.trailing,10)
                                
                                Spacer()
                                
                                Image(systemName: "xmark.circle.fill")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 20, height: 20,alignment:.center)
                                    .foregroundColor(.red)
                                    .onTapGesture(perform: {
                                        withAnimation{
                                            self.showPlacePicker = false
                                        }
                                    })
                            }
                            .padding(20)
                            
                            PlacesSearchBar(myLocationReceiver: self)
                                .navigationTitle("")
                                .clipped()
                            
                            Spacer()
                            
                        }
                        .background(RoundedCorners(tl: 20, tr: 20, bl: 0, br: 0).fill(Color.white))
                        .padding(.top,200)
                        
                    }
                    .onDisappear{
                        print("Selected Place Address ===> \(self.address)\nSelected Place Latitude ===> \(self.latitude)\nSelected Palce Longitude ===> \(self.longitude)")
                    }
                }

                if(showToast){
                    Toast(isShowing: self.$showToast, message: self.toastMessage)
                }
                
                
            }
                .navigationBarHidden(true)
                .onAppear{
                    
                    self.garageName = self.existingGarageData.garageName
                    self.isPublic = self.existingGarageData.isPublic
                    self.address = self.existingGarageData.address
                    self.latitude = self.existingGarageData.location?.coordinates[0] ?? 0.0
                    self.longitude = self.existingGarageData.location?.coordinates[1] ?? 0.0
                    
                }
               
        }
    }


    extension Edit_Garage_Screen{
        
        func locationReceived(placeViewModel: PlaceViewModel) {
            self.address = placeViewModel.address
            self.latitude = placeViewModel.latitude
            self.longitude = placeViewModel.longitude
            self.showPlacePicker.toggle()
        }
        
        
    }

