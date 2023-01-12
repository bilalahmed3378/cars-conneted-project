//
//  updateCarScreen.swift
//  cars conneted
//
//  Created by Sohaib Sajjad on 12/01/2023.
//

import Foundation
import SwiftUI

struct Update_your_Car_Screen: View {
    
    @StateObject var updateCarApi = UpdateCarApi()
    
    @State var date = Date()
    
    let dateFormatter = DateFormatter()
    
    @State var currentYear = 2021
    
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
    
    @State var showToast : Bool = false
    @State var toastMessage : String = ""
    
    let carId: String

    
    let carDataModel: viewGarageDataCarModel
    
    init(carId: String, carDataModel: viewGarageDataCarModel){
        
        self.carId = carId
        self.carDataModel = carDataModel
        self.dateFormatter.dateFormat = "YYYY"
        
    }
    
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
                            Text("Update your Car")
                                .font(AppFonts.semiBold_24)
                                .overlay((LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                                .mask( Text("Update your Car")
                                    .font(AppFonts.semiBold_24)
                                )
                            
                            Spacer()
                        }
                        
                        Text("Update your car and provide us required deatils to setup in your garage")
                            .foregroundColor(AppColors.BlackColor)
                            .font(AppFonts.regular_14)
                            .padding(.top)
                        
                    }.padding(.leading)
                        .padding(.trailing)
                    
                    Group{
                        VStack{
                            
                            Text("Brand")
                                .foregroundColor(AppColors.BlackColor)
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
                                .foregroundColor(AppColors.BlackColor)
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
                        
                        //                    VStack{
                        //
                        //                Text("Color")
                        //                  .padding(.top,20)
                        //                  .frame(maxWidth: .infinity, alignment: .leading)
                        //                    .padding(.bottom,-5)
                        //
                        //
                        //                TextField("Black",text:$color)
                        //                    .foregroundColor(AppColors.redGradientColor1)
                        //                  .padding(.vertical, 10)
                        //                  .autocapitalization(.none)
                        //                  .background(Rectangle().frame(height: 1).padding(.top, 30))
                        //                  .foregroundColor(.black)
                        //
                        //                    }.padding(.leading)
                        //                            .padding(.trailing)
                        
                        //                    VStack{
                        //
                        //                Text("Engine")
                        //                  .padding(.top,20)
                        //                  .frame(maxWidth: .infinity, alignment: .leading)
                        //                  .padding(.bottom,-5)
                        //
                        //
                        //                TextField("2000 CC",text:$engine)
                        //                    .foregroundColor(AppColors.redGradientColor1)
                        //                  .padding(.vertical, 10)
                        //                  .autocapitalization(.none)
                        //                  .background(Rectangle().frame(height: 1).padding(.top, 30))
                        //                  .foregroundColor(.black)
                        //
                        //                    }.padding(.leading)
                        //                            .padding(.trailing)
                        
                        //                    VStack{
                        //
                        //                Text("Type")
                        //                  .padding(.top,20)
                        //                  .frame(maxWidth: .infinity, alignment: .leading)
                        //                  .padding(.bottom,-5)
                        //
                        //
                        //                TextField("Sedan, Sports, Etc",text:$type)
                        //                    .foregroundColor(AppColors.redGradientColor1)
                        //                  .padding(.vertical, 10)
                        //                  .autocapitalization(.none)
                        //                  .background(Rectangle().frame(height: 1).padding(.top, 30))
                        //                  .foregroundColor(.black)
                        //                  .overlay(HStack{
                        //                    Spacer()
                        //
                        //                      Menu(content: {
                        //
                        //                          Button(action: {}, label: {
                        //                              Text("SUV")
                        //                          })
                        //
                        //                          Button(action: {}, label: {
                        //                              Text("Sports")
                        //                          })
                        //
                        //                          Button(action: {}, label: {
                        //                              Text("Sedan")
                        //                          })
                        //
                        //
                        //
                        //
                        //                      }, label: {
                        //                          Image("dropdown menu 2")
                        //                                .resizable()
                        //                                .aspectRatio(contentMode: .fit)
                        //                                .frame(width: 20, height: 20)
                        //                                .padding()
                        //                      })
                        //
                        //
                        //                  })
                        //
                        //                    }.padding(.leading)
                        //                            .padding(.trailing)
                        
                        VStack{
                            
                            //
                            
                            Text("Year")
                                .foregroundColor(AppColors.BlackColor)
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
                                        
                                        ForEach(1900...(self.currentYear) ,id: \.self){ value in
                                            
                                            
                                            Button {
                                                
                                                self.year = "\(value)"
                                                
                                            } label: {
                                                
                                                Text(String(value))
                                            }
                                            
                                        }
                                        
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
                            .foregroundColor(AppColors.BlackColor)
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
                    
                    
                    if(self.updateCarApi.isLoading){
                        
                        HStack{
                            
                            Spacer()
                            
                            ProgressView()
                                .padding()
                                .onDisappear{
                                    if(self.updateCarApi.isApiCallDone && self.updateCarApi.isApiCallSuccessful){
                                        
                                        if(self.updateCarApi.carUpdatedSuccessfully){
                                            
                                            self.toastMessage = "car updated successfully"
                                            self.showToast = true
                                            self.toHome = true
                                        }
                                        
                                        else {
                                            self.toastMessage = "Unable to update car"
                                            self.showToast = true
                                        }
                                        
                                    }
                                    else if(self.updateCarApi.isApiCallDone && (!self.updateCarApi.isApiCallSuccessful)){
                                        self.toastMessage = "Unable to access internet. Please check you internet connection and try again."
                                        self.showToast = true
                                    }
                                    
                                    else{
                                        
                                        self.toastMessage = "something went wrong"
                                        self.showToast = true
                                        
                                    }
                                    
                                }
                            
                            
                            Spacer()
                        }
                        
                        
                        
                    }
                    
                    else{
                        
                        Button(action: {
                            
                            self.updateCarApi.updateCar(car_id: self.carId, brand: self.brand, model: self.model, year: Int(self.year) ?? 0, description: self.description)
                            
                        }, label: {
                            
                            HStack{
                                
                                Spacer()
                                
                                Text("Save")
                                    .font(AppFonts.semiBold_16)
                                    .fontWeight(.medium)
                                    .foregroundColor(.white)
                                    .frame(width: UIScreen.widthBlockSize*90, height: UIScreen.heightBlockSize*7)
                                    .background(RoundedRectangle(cornerRadius: 50).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                                
                                Spacer()
                                
                            }
                            
                        })
                        .padding(.top)
                        
                    }
                    
                    Spacer()
                }
                
                
            }
            
            if(showToast){
                Toast(isShowing: self.$showToast, message: self.toastMessage)
            }
            
            
        }
        .sheet(isPresented: self.$showSheet) {
            
            ImagePicker(sourceType: .photoLibrary) { image in
                
                self.photos.append(Image(uiImage: image))
                
            }
            
            
        }
        .onAppear{
            
            self.brand = self.carDataModel.brand
            self.model = self.carDataModel.model
            self.year = String(self.carDataModel.year)
            self.description = self.carDataModel.description

            self.currentYear = Int(self.dateFormatter.string(from: self.date)) ?? 2022

            
        }
        .navigationBarHidden(true)
        
    }
}

//struct Add_your_Car_Screen_Previews: PreviewProvider {
//    static var previews: some View {
//        Add_your_Car_Screen()
//    }
//}
