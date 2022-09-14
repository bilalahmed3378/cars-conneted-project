//
//  Add classified Services Screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 24/08/2022.
//

import SwiftUI

struct Add_classified_Screen: View {
    @State private var availability = false
    @State private var monday = false
    @State private var tuesday = false
    @State private var wednesday = false
    @State private var thursday = false
    @State private var friday = false
    @State private var saturday = false
    @State private var differentdetails = false
    
    @State private var category = ""
    @State private var searchShop = ""
    
    @State private var mainCategory = ""
    @State private var subCategory = ""
    
    @State private var partName = ""
    
    @State private var model = ""
    @State private var condition = ""
    
    @State private var brand = ""
    @State private var fuelType = ""
    @State private var transmission = ""
    
    
    @State private var name = ""
    @State private var email = ""
    @State private var phone = ""
    @State private var title = ""
    @State private var price = ""
    @State private var description = ""
    @State private var location = ""
    @Environment(\.presentationMode) var presentaionMode
    
    @State var showSheet = false
    
    @State var photos : Array<Image> = []
    
    
    @State var isSelected: Int = 0
    
    @State private var addShop1 = false
    
    @State private var addShop2 = false
    
    var body: some View {
        VStack{
            
            VStack{
                
                // top bar
                HStack{
                    Button(action: {
                        self.presentaionMode.wrappedValue.dismiss()
                    }, label: {
                        Image("back icon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 35, height: 35)
                            .padding(.leading,-10)
                    })
                    
                    
                    Spacer()
                    
                    Text("Add Classified")
                        .font(AppFonts.SemiBold_20)
                        .foregroundColor(.white)
                    
                    Spacer()
                    
                    
                    Image("doted icons-1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 35, height: 35)
                    
                    
                    
                }.padding(.leading)
                    .padding(.trailing)
                    .padding(.top,20)
                
            }
            .padding(.top,40)
            .padding(.bottom,30)
            .background(
                Image("home screen background")
                    .resizable())
            
            
            ScrollView(.vertical, showsIndicators: false){
                
                Group{
                    
                    HStack{
                        Text("Select a category")
                        
                            .font(AppFonts.regular_16)
                        
                        Spacer()
                    }
                    .padding(.top)
                    
                    HStack{
                        TextField("Service",text:$category)
                            .foregroundColor(AppColors.redGradientColor1)
                            .padding(.vertical, 10)
                            .autocapitalization(.none)
                            .background(Rectangle().frame(height: 1).padding(.top, 40))
                            .foregroundColor(.black)
                            .overlay(HStack{
                                Spacer()
                                Menu(content: {
                                    Button(action: {
                                        self.isSelected = 0
                                    }, label: {
                                        Text("Service")
                                    })
                                    
                                    Button(action: {
                                        self.isSelected = 1
                                    }, label: {
                                        Text("Vehicles")
                                    })
                                    
                                    Button(action: {
                                        self.isSelected = 2
                                    }, label: {
                                        Text("Parts")
                                    })
                                    
                                    
                                    
                                }, label: {
                                    Image("dropdown menu 2")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 20, height: 20)
                                        .padding()
                                })
                                
                            })
                    }
                    
                    .padding(.bottom)
                    
                }
                
                if(self.isSelected == 0){
                    HStack{
                        Text("Link to shop")
                            .font(AppFonts.regular_16)
                        
                        Spacer()
                    }
                    
                    .padding(.top,10)
                    
                    Group{
                        
                        HStack{
                            TextField("Search shop",text:$searchShop)
                                .foregroundColor(AppColors.redGradientColor1)
                                .padding(.vertical, 10)
                                .autocapitalization(.none)
                                .background(Rectangle().frame(height: 1).padding(.top, 40))
                                .foregroundColor(.black)
                                .overlay(HStack{
                                    Spacer()
                                    Button(action: {
                                        self.addShop1 = false
                                        self.addShop2 = false
                                    }, label: {
                                        Image("search icon black")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 20, height: 20)
                                            .padding()
                                    })
                                   
                                    
                                })
                        }
                        .padding(.bottom)
                        
                        
                        
                        
                        HStack{
                            
                            if(!self.addShop1){
                            HStack{
                                Text("ABC")
                                    .font(AppFonts.regular_14)
                                
                                Button(action: {
                                    self.addShop1 = true
                                }, label: {
                                    Image("cross icons")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 20, height: 20)
                                })
                               
                            }.padding()
                                .background(RoundedRectangle(cornerRadius: 50).fill(.gray.opacity(0.3)))
                            }
                            
                            if(!self.addShop2){
                            HStack{
                                Text("desc")
                                    .font(AppFonts.regular_14)
                                    .foregroundColor(.gray)
                                
                                Button(action: {
                                    self.addShop2 = true
                                }, label: {
                                    Image("cross icons")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 20, height: 20)
                                })
                               
                            }.padding()
                                .background(RoundedRectangle(cornerRadius: 50).fill(.gray.opacity(0.3)))
                            }
                            
                            Spacer()
                        }
                        
                        
                        HStack{
                            Text("Service details")
                                .font(AppFonts.regular_16)
                            
                            Spacer()
                        }
                        .padding(.top,30)
                        
                        VStack{
                            
                            Text("Title")
                                .padding(.top,20)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.bottom,-5)
                            
                            
                            TextField("Car Wash",text:$title)
                                .foregroundColor(AppColors.redGradientColor1)
                                .padding(.vertical, 10)
                                .autocapitalization(.none)
                                .background(Rectangle().frame(height: 1).padding(.top, 40))
                                .foregroundColor(.black)
                            
                            
                        }
                        
                        
                        VStack{
                            
                            Text("Price")
                                .padding(.top,20)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.bottom,-5)
                            
                            
                            TextField("$ 400",text:$price)
                                .foregroundColor(AppColors.redGradientColor1)
                                .padding(.vertical, 10)
                                .autocapitalization(.none)
                                .background(Rectangle().frame(height: 1).padding(.top, 40))
                                .foregroundColor(.black)
                            
                            
                        }
                        .padding(.bottom)
                        
                        
                        
                        HStack{
                            Text("Add availability hours")
                                .font(AppFonts.regular_16)
                            
                            Toggle("", isOn: $availability)
                                .toggleStyle(SwitchToggleStyle(tint: .green))
                        }
                        .padding(.bottom)
                        
                    }
                    
                    if (self.availability){
                        Group{
                            VStack{
                                HStack{
                                    Text("Monday")
                                        .font(AppFonts.regular_14)
                                    
                                    Toggle("", isOn: $monday)
                                        .toggleStyle(SwitchToggleStyle(tint: .green))
                                }
                                
                                .padding(.bottom)
                                
                                
                                if (self.monday){
                                    HStack{
                                        VStack(alignment: .leading){
                                            Text("Start time")
                                                .font(AppFonts.regular_14)
                                            
                                            Text("9:00 AM")
                                                .font(AppFonts.regular_12)
                                                .foregroundColor(.gray)
                                                .padding()
                                                .padding(.trailing,30)
                                                .background(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.3)))
                                            
                                        }
                                        
                                        Spacer()
                                        
                                        VStack(alignment: .leading){
                                            Text("End time")
                                                .font(AppFonts.regular_14)
                                            
                                            Text("9:00 AM")
                                                .font(AppFonts.regular_12)
                                                .foregroundColor(.gray)
                                                .padding()
                                                .padding(.trailing,30)
                                                .background(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.3)))
                                            
                                        }
                                        
                                        
                                    }
                                    
                                    
                                }
                                
                                
                                
                            }
                            
                            Divider()
                            
                            
                            
                            
                            HStack{
                                Text("Tuesday")
                                    .font(AppFonts.regular_14)
                                
                                Toggle("", isOn: $tuesday)
                                    .toggleStyle(SwitchToggleStyle(tint: .green))
                            }
                            
                            
                            if (self.tuesday){
                                HStack{
                                    VStack(alignment: .leading){
                                        Text("Start time")
                                            .font(AppFonts.regular_14)
                                        
                                        Text("9:00 AM")
                                            .font(AppFonts.regular_12)
                                            .foregroundColor(.gray)
                                            .padding()
                                            .padding(.trailing,30)
                                            .background(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.3)))
                                        
                                    }
                                    
                                    Spacer()
                                    
                                    VStack(alignment: .leading){
                                        Text("End time")
                                            .font(AppFonts.regular_14)
                                        
                                        Text("9:00 AM")
                                            .font(AppFonts.regular_12)
                                            .foregroundColor(.gray)
                                            .padding()
                                            .padding(.trailing,30)
                                            .background(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.3)))
                                        
                                    }
                                    
                                    
                                }
                                
                                .padding(.bottom)
                            }
                            
                            Divider()
                            
                            
                            
                            HStack{
                                Text("Wednesday")
                                    .font(AppFonts.regular_14)
                                
                                Toggle("", isOn: $wednesday)
                                    .toggleStyle(SwitchToggleStyle(tint: .green))
                            }
                            
                            
                            if (self.wednesday){
                                HStack{
                                    VStack(alignment: .leading){
                                        Text("Start time")
                                            .font(AppFonts.regular_14)
                                        
                                        Text("9:00 AM")
                                            .font(AppFonts.regular_12)
                                            .foregroundColor(.gray)
                                            .padding()
                                            .padding(.trailing,30)
                                            .background(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.3)))
                                        
                                    }
                                    
                                    Spacer()
                                    
                                    VStack(alignment: .leading){
                                        Text("End time")
                                            .font(AppFonts.regular_14)
                                        
                                        Text("9:00 AM")
                                            .font(AppFonts.regular_12)
                                            .foregroundColor(.gray)
                                            .padding()
                                            .padding(.trailing,30)
                                            .background(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.3)))
                                        
                                    }
                                    
                                    
                                }
                                .padding(.bottom)
                                
                            }
                            
                            Divider()
                            
                        }
                        
                        Group{
                            HStack{
                                Text("Thursday")
                                    .font(AppFonts.regular_14)
                                
                                Toggle("", isOn: $thursday)
                                    .toggleStyle(SwitchToggleStyle(tint: .green))
                            }
                            
                            
                            
                            if (self.thursday){
                                HStack{
                                    VStack(alignment: .leading){
                                        Text("Start time")
                                            .font(AppFonts.regular_14)
                                        
                                        Text("9:00 AM")
                                            .font(AppFonts.regular_12)
                                            .foregroundColor(.gray)
                                            .padding()
                                            .padding(.trailing,30)
                                            .background(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.3)))
                                        
                                    }
                                    
                                    Spacer()
                                    
                                    VStack(alignment: .leading){
                                        Text("End time")
                                            .font(AppFonts.regular_14)
                                        
                                        Text("9:00 AM")
                                            .font(AppFonts.regular_12)
                                            .foregroundColor(.gray)
                                            .padding()
                                            .padding(.trailing,30)
                                            .background(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.3)))
                                        
                                    }
                                    
                                    
                                }
                                .padding(.bottom)
                                
                            }
                            
                            
                            Divider()
                            
                            HStack{
                                Text("Friday")
                                    .font(AppFonts.regular_14)
                                
                                Toggle("", isOn: $friday)
                                    .toggleStyle(SwitchToggleStyle(tint: .green))
                            }
                            
                            
                            
                            if (self.friday){
                                HStack{
                                    VStack(alignment: .leading){
                                        Text("Start time")
                                            .font(AppFonts.regular_14)
                                        
                                        Text("9:00 AM")
                                            .font(AppFonts.regular_12)
                                            .foregroundColor(.gray)
                                            .padding()
                                            .padding(.trailing,30)
                                            .background(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.3)))
                                        
                                    }
                                    
                                    Spacer()
                                    
                                    VStack(alignment: .leading){
                                        Text("End time")
                                            .font(AppFonts.regular_14)
                                        
                                        Text("9:00 AM")
                                            .font(AppFonts.regular_12)
                                            .foregroundColor(.gray)
                                            .padding()
                                            .padding(.trailing,30)
                                            .background(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.3)))
                                        
                                    }
                                    
                                    
                                }
                                
                                .padding(.bottom)
                            }
                            
                            Divider()
                            
                            HStack{
                                Text("Saturday")
                                    .font(AppFonts.regular_14)
                                
                                Toggle("", isOn: $saturday)
                                    .toggleStyle(SwitchToggleStyle(tint: .green))
                            }
                            
                            
                            if (self.saturday){
                                HStack{
                                    VStack(alignment: .leading){
                                        Text("Start time")
                                            .font(AppFonts.regular_14)
                                        
                                        Text("9:00 AM")
                                            .font(AppFonts.regular_12)
                                            .foregroundColor(.gray)
                                            .padding()
                                            .padding(.trailing,30)
                                            .background(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.3)))
                                        
                                    }
                                    
                                    Spacer()
                                    
                                    VStack(alignment: .leading){
                                        Text("End time")
                                            .font(AppFonts.regular_14)
                                        
                                        Text("9:00 AM")
                                            .font(AppFonts.regular_12)
                                            .foregroundColor(.gray)
                                            .padding()
                                            .padding(.trailing,30)
                                            .background(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.3)))
                                        
                                    }
                                    
                                    
                                }
                                
                                .padding(.bottom)
                            }
                            
                            Divider()
                            
                        }
                        
                    }
                    
                    Group{
                        
                        VStack{
                            
                            Text("Description")
                                .padding(.top,20)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.bottom,-5)
                            
                            
                            TextField("Tell us about this car",text:$description)
                                .foregroundColor(AppColors.redGradientColor1)
                                .padding(.vertical, 10)
                                .autocapitalization(.none)
                                .background(Rectangle().frame(height: 1).padding(.top, 40))
                                .foregroundColor(.black)
                            
                            
                        }
                        
                        
                        VStack{
                            
                            Text("Location")
                                .padding(.top,20)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.bottom,-5)
                            
                            
                            TextField("Washington, DC",text:$location)
                                .foregroundColor(AppColors.redGradientColor1)
                                .padding(.vertical, 10)
                                .autocapitalization(.none)
                                .background(Rectangle().frame(height: 1).padding(.top, 40))
                                .foregroundColor(.black)
                            
                            
                        }
                        
                        
                        HStack{
                            Text("Upload Images")
                                .font(AppFonts.regular_16)
                            
                            Spacer()
                        }
                        
                        .padding(.top)
                        
                        
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
                                
                                
                            }
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
                        }
                        
                        HStack{
                            Text("Different Contact Details")
                                .font(AppFonts.regular_16)
                            
                            Toggle("", isOn: $differentdetails)
                                .toggleStyle(SwitchToggleStyle(tint: .green))
                            
                            Spacer()
                        }
                        
                        .padding(.top)
                        
                        
                    }
                    
                    
                    Group{
                        
                        if(self.differentdetails){
                            Group{
                                
                                VStack{
                                    
                                    Text("Name")
                                        .padding(.top,20)
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .padding(.bottom,-5)
                                    
                                    
                                    TextField("John Wick",text:$name)
                                        .foregroundColor(AppColors.redGradientColor1)
                                        .padding(.vertical, 10)
                                        .autocapitalization(.none)
                                        .background(Rectangle().frame(height: 1).padding(.top, 40))
                                        .foregroundColor(.black)
                                    
                                    
                                }
                                
                                
                                
                                VStack{
                                    
                                    Text("Email")
                                        .padding(.top,20)
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .padding(.bottom,-5)
                                    
                                    
                                    TextField("123@gmail.com",text:$email)
                                        .foregroundColor(AppColors.redGradientColor1)
                                        .padding(.vertical, 10)
                                        .autocapitalization(.none)
                                        .background(Rectangle().frame(height: 1).padding(.top, 40))
                                        .foregroundColor(.black)
                                    
                                    
                                }
                                
                                
                                VStack{
                                    
                                    Text("Phone Number")
                                        .padding(.top,20)
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .padding(.bottom,-5)
                                    
                                    
                                    TextField("+96-43564356456",text:$phone)
                                        .foregroundColor(AppColors.redGradientColor1)
                                        .padding(.vertical, 10)
                                        .autocapitalization(.none)
                                        .background(Rectangle().frame(height: 1).padding(.top, 40))
                                        .foregroundColor(.black)
                                    
                                    
                                }
                                
                                
                            }
                        }
                        
                        NavigationLink(destination: Post_products_Services_Screen(), label: {
                            Text("Preview")
                                .font(AppFonts.semiBold_16)
                                .fontWeight(.medium)
                                .foregroundColor(.white)
                                .frame(width: UIScreen.widthBlockSize*90, height: UIScreen.heightBlockSize*7)
                                .background(RoundedRectangle(cornerRadius: 50).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                                .padding(.top,30)
                                .padding(.bottom)
                        })
                        
                        
                    }
                    
                }
                
                if(self.isSelected == 1) {
                    
                    HStack{
                        Text("Link to shop")
                            .font(AppFonts.regular_16)
                        
                        Spacer()
                    }
//                    .padding(.leading)
//                    .padding(.trailing)
                    .padding(.top,10)
                    
                    HStack{
                        TextField("Search shop",text:$searchShop)
                            .foregroundColor(AppColors.redGradientColor1)
                            .padding(.vertical, 10)
                            .autocapitalization(.none)
                            .background(Rectangle().frame(height: 1).padding(.top, 40))
                            .foregroundColor(.black)
                            .overlay(HStack{
                                Spacer()
                                
                                Image("search icon black")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 20, height: 20)
                                    .padding()
                                
                            })
                    }
//                    .padding(.leading)
//                    .padding(.trailing)
                    .padding(.bottom)
                    
                    
                    
                    Group{
                        HStack{
                            HStack{
                                Text("ABC")
                                    .font(AppFonts.regular_14)
                                
                                
                                Image("cross icons")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 20, height: 20)
                            }
                            .padding()
                                .background(RoundedRectangle(cornerRadius: 50).fill(.gray.opacity(0.3)))
                            
                            HStack{
                                Text("desc")
                                    .font(AppFonts.regular_14)
                                    .foregroundColor(.gray)
                                
                                Image("cross icons")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 20, height: 20)
                            }
                            .padding()
                                .background(RoundedRectangle(cornerRadius: 50).fill(.gray.opacity(0.3)))
                            
                            Spacer()
                        }
//                        .padding(.leading)
//                            .padding(.trailing)
                        
                        HStack{
                            Text("Main category")
                            
                            Spacer()
                        }
//                        .padding(.leading)
//                        .padding(.trailing)
                        .padding(.top)
                        
                        HStack{
                            TextField("Spare parts",text:$mainCategory)
                                .foregroundColor(AppColors.redGradientColor1)
                                .padding(.vertical, 10)
                                .autocapitalization(.none)
                                .background(Rectangle().frame(height: 1).padding(.top, 40))
                                .foregroundColor(.black)
                                .overlay(HStack{
                                    Spacer()
                                    Menu(content: {
                                        
                                    }, label: {
                                        Image("dropdown menu 2")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 20, height: 20)
                                            .padding()
                                    })
                                    
                                })
                        }
//                        .padding(.leading)
//                        .padding(.trailing)
                        
                        HStack{
                            Text("Sub category")
                            
                            Spacer()
                        }
//                        .padding(.leading)
//                        .padding(.trailing)
                        .padding(.top)
                        
                        HStack{
                            TextField("Engine Spare Parts etc",text:$subCategory)
                                .foregroundColor(AppColors.redGradientColor1)
                                .padding(.vertical, 10)
                                .autocapitalization(.none)
                                .background(Rectangle().frame(height: 1).padding(.top, 40))
                                .foregroundColor(.black)
                                .overlay(HStack{
                                    Spacer()
                                    Menu(content: {
                                        
                                    }, label: {
                                        Image("dropdown menu 2")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 20, height: 20)
                                            .padding()
                                    })
                                    
                                })
                        }
//                        .padding(.leading)
//                        .padding(.trailing)
                        
                    }
                    
                    Group{
                        HStack{
                            Text("Part Details")
                            
                            Spacer()
                        }
//                        .padding()
                        .padding(.top)
                        
                        HStack{
                            Text("Part Name")
                            
                            Spacer()
                        }
//                        .padding(.leading)
//                        .padding(.trailing)
                        .padding(.top)
                        
                        HStack{
                            TextField("PK",text:$partName)
                                .foregroundColor(AppColors.redGradientColor1)
                                .padding(.vertical, 10)
                                .autocapitalization(.none)
                                .background(Rectangle().frame(height: 1).padding(.top, 40))
                                .foregroundColor(.black)
                            
                        }
//                        .padding(.leading)
//                        .padding(.trailing)
                        .padding(.bottom)
                        
                        HStack{
                            Text("Model")
                            
                            Spacer()
                        }
//                        .padding(.leading)
//                        .padding(.trailing)
                        
                        
                        HStack{
                            TextField("2019",text:$model)
                                .foregroundColor(AppColors.redGradientColor1)
                                .padding(.vertical, 10)
                                .autocapitalization(.none)
                                .background(Rectangle().frame(height: 1).padding(.top, 40))
                                .foregroundColor(.black)
                            
                        }
//                        .padding(.leading)
//                        .padding(.trailing)
                        .padding(.bottom)
                        
                        HStack{
                            Text("Price")
                            
                            Spacer()
                        }
//                        .padding(.leading)
//                        .padding(.trailing)
//
                        
                        HStack{
                            TextField("56,000 USD",text:$price)
                                .foregroundColor(AppColors.redGradientColor1)
                                .padding(.vertical, 10)
                                .autocapitalization(.none)
                                .background(Rectangle().frame(height: 1).padding(.top, 40))
                                .foregroundColor(.black)
                            
                        }
//                        .padding(.leading)
//                        .padding(.trailing)
                        .padding(.bottom)
                        
                        
                        HStack{
                            Text("Condition")
                            
                            Spacer()
                        }
//                        .padding(.leading)
//                        .padding(.trailing)
                        
                        
                        HStack{
                            TextField("Used",text:$condition)
                                .foregroundColor(AppColors.redGradientColor1)
                                .padding(.vertical, 10)
                                .autocapitalization(.none)
                                .background(Rectangle().frame(height: 1).padding(.top, 40))
                                .foregroundColor(.black)
                                .overlay(HStack{
                                    Spacer()
                                    Menu(content: {
                                        Text("Used")
                                        
                                        Text("New")
                                    }, label: {
                                        Image("dropdown menu 2")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 20, height: 20)
                                            .padding()
                                    })
                                    
                                })
                        }
//                        .padding(.leading)
//                        .padding(.trailing)
                        
                        
                        
                    }
                    
                    Group{
                        
                        VStack{
                            
                            Text("Description")
                                .padding(.top,20)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.bottom,-5)
                            
                            
                            TextField("Tell us about this car",text:$description)
                                .foregroundColor(AppColors.redGradientColor1)
                                .padding(.vertical, 10)
                                .autocapitalization(.none)
                                .background(Rectangle().frame(height: 1).padding(.top, 40))
                                .foregroundColor(.black)
                            
                            
                        }
//                        .padding(.leading)
//                        .padding(.trailing)
                        
                        VStack{
                            
                            Text("Location")
                                .padding(.top,20)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.bottom,-5)
                            
                            
                            TextField("Washington, DC",text:$location)
                                .foregroundColor(AppColors.redGradientColor1)
                                .padding(.vertical, 10)
                                .autocapitalization(.none)
                                .background(Rectangle().frame(height: 1).padding(.top, 40))
                                .foregroundColor(.black)
                            
                            
                        }
//                        .padding(.leading)
//                        .padding(.trailing)
                        
                        
                        HStack{
                            Text("Upload Images")
                                .font(AppFonts.regular_16)
                            
                            Spacer()
                        }
//                        .padding(.leading)
//                        .padding(.trailing)
                        .padding(.top)
                        
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
                                
                                
                            }
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
                        }
                        
                        HStack{
                            Text("Different Contact Details")
                                .font(AppFonts.regular_16)
                            
                            Toggle("", isOn: $differentdetails)
                                .toggleStyle(SwitchToggleStyle(tint: .green))
                            
                            Spacer()
                        }
//                        .padding(.leading)
//                        .padding(.trailing)
                        .padding(.top)
                        
                        
                    }
                    
                    
                    Group{
                        
                        if(self.differentdetails){
                            Group{
                                
                                VStack{
                                    
                                    Text("Name")
                                        .padding(.top,20)
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .padding(.bottom,-5)
                                    
                                    
                                    TextField("John Wick",text:$name)
                                        .foregroundColor(AppColors.redGradientColor1)
                                        .padding(.vertical, 10)
                                        .autocapitalization(.none)
                                        .background(Rectangle().frame(height: 1).padding(.top, 40))
                                        .foregroundColor(.black)
                                    
                                    
                                }
//                                .padding(.leading)
//                                .padding(.trailing)
                                
                                
                                VStack{
                                    
                                    Text("Email")
                                        .padding(.top,20)
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .padding(.bottom,-5)
                                    
                                    
                                    TextField("123@gmail.com",text:$email)
                                        .foregroundColor(AppColors.redGradientColor1)
                                        .padding(.vertical, 10)
                                        .autocapitalization(.none)
                                        .background(Rectangle().frame(height: 1).padding(.top, 40))
                                        .foregroundColor(.black)
                                    
                                    
                                }
//                                .padding(.leading)
//                                .padding(.trailing)
                                
                                VStack{
                                    
                                    Text("Phone Number")
                                        .padding(.top,20)
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .padding(.bottom,-5)
                                    
                                    
                                    TextField("+96-43564356456",text:$phone)
                                        .foregroundColor(AppColors.redGradientColor1)
                                        .padding(.vertical, 10)
                                        .autocapitalization(.none)
                                        .background(Rectangle().frame(height: 1).padding(.top, 40))
                                        .foregroundColor(.black)
                                    
                                    
                                }
//                                .padding(.leading)
//                                .padding(.trailing)
                                
                            }
                        }
                        
                        NavigationLink(destination: Post_Product_Parts_Screen(), label: {
                            Text("Preview")
                                .font(AppFonts.semiBold_16)
                                .fontWeight(.medium)
                                .foregroundColor(.white)
                                .frame(width: UIScreen.widthBlockSize*90, height: UIScreen.heightBlockSize*7)
                                .background(RoundedRectangle(cornerRadius: 50).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                                .padding(.top,30)
                                .padding(.bottom)
                            
                        })
                        
                    }
                }
                
                if(self.isSelected == 2){
                    
                    HStack{
                        Text("Link to shop")
                            .font(AppFonts.regular_16)
                        
                        Spacer()
                    }
//                    .padding(.leading)
//                    .padding(.trailing)
                    .padding(.top,10)
                    
                    HStack{
                        TextField("Search shop",text:$searchShop)
                            .foregroundColor(AppColors.redGradientColor1)
                            .padding(.vertical, 10)
                            .autocapitalization(.none)
                            .background(Rectangle().frame(height: 1).padding(.top, 40))
                            .foregroundColor(.black)
                            .overlay(HStack{
                                Spacer()
                                
                                Image("search icon black")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 20, height: 20)
                                    .padding()
                                
                            })
                    }
//                    .padding(.leading)
//                    .padding(.trailing)
                    .padding(.bottom)
                    
                    
                    
                    Group{
                        HStack{
                            HStack{
                                Text("ABC")
                                    .font(AppFonts.regular_14)
                                
                                
                                Image("cross icons")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 20, height: 20)
                            }.padding()
                                .background(RoundedRectangle(cornerRadius: 50).fill(.gray.opacity(0.3)))
                            
                            HStack{
                                Text("desc")
                                    .font(AppFonts.regular_14)
                                    .foregroundColor(.gray)
                                
                                Image("cross icons")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 20, height: 20)
                            }.padding()
                                .background(RoundedRectangle(cornerRadius: 50).fill(.gray.opacity(0.3)))
                            
                            Spacer()
                        }
//                        .padding(.leading)
//                            .padding(.trailing)
//
                        
                    }
                    
                    Group{
                        HStack{
                            Text("Car Details")
                            
                            Spacer()
                        }
//                        .padding()
                        .padding(.top)
                        
                        HStack{
                            Text("Brand")
                            
                            Spacer()
                        }
//                        .padding(.leading)
//                        .padding(.trailing)
                        .padding(.top)
                        
                        HStack{
                            TextField("Honda",text:$brand)
                                .foregroundColor(AppColors.redGradientColor1)
                                .padding(.vertical, 10)
                                .autocapitalization(.none)
                                .background(Rectangle().frame(height: 1).padding(.top, 40))
                                .foregroundColor(.black)
                            
                        }
//                        .padding(.leading)
//                        .padding(.trailing)
                        .padding(.bottom)
                        
                        HStack{
                            Text("Model")
                            
                            Spacer()
                        }
//                        .padding(.leading)
//                        .padding(.trailing)
                        
                        
                        HStack{
                            TextField("2019",text:$model)
                                .foregroundColor(AppColors.redGradientColor1)
                                .padding(.vertical, 10)
                                .autocapitalization(.none)
                                .background(Rectangle().frame(height: 1).padding(.top, 40))
                                .foregroundColor(.black)
                            
                        }
//                        .padding(.leading)
//                        .padding(.trailing)
                        .padding(.bottom)
                        
                        Group{
                            HStack{
                                Text("Price")
                                
                                Spacer()
                            }
//                            .padding(.leading)
//                            .padding(.trailing)
//
                            
                            HStack{
                                TextField("56,000 USD",text:$price)
                                    .foregroundColor(AppColors.redGradientColor1)
                                    .padding(.vertical, 10)
                                    .autocapitalization(.none)
                                    .background(Rectangle().frame(height: 1).padding(.top, 40))
                                    .foregroundColor(.black)
                                
                            }
//                            .padding(.leading)
//                            .padding(.trailing)
                            .padding(.bottom)
                            
                            
                            HStack{
                                Text("Condition")
                                
                                Spacer()
                            }
//                            .padding(.leading)
//                            .padding(.trailing)
                            
                            
                            HStack{
                                TextField("Used",text:$condition)
                                    .foregroundColor(AppColors.redGradientColor1)
                                    .padding(.vertical, 10)
                                    .autocapitalization(.none)
                                    .background(Rectangle().frame(height: 1).padding(.top, 40))
                                    .foregroundColor(.black)
                                    .overlay(HStack{
                                        Spacer()
                                        Menu(content: {
                                            Button(action: {}, label: {
                                                Text("Used")
                                            })
                                          
                                            Button(action: {}, label: {
                                                Text("New")
                                            })
                                           
                                            
                                        }, label: {
                                            Image("dropdown menu 2")
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .frame(width: 20, height: 20)
                                                .padding()
                                        })
                                        
                                    })
                            }
//                            .padding(.leading)
//                            .padding(.trailing)
                            
                            
                            
                            
                            
                            HStack{
                                Text("Fuel type")
                                
                                Spacer()
                            }
//                            .padding(.leading)
//                            .padding(.trailing)
                            .padding(.top)
                            
                            
                            
                            HStack{
                                TextField("Petrol",text:$fuelType)
                                    .foregroundColor(AppColors.redGradientColor1)
                                    .padding(.vertical, 10)
                                    .autocapitalization(.none)
                                    .background(Rectangle().frame(height: 1).padding(.top, 40))
                                    .foregroundColor(.black)
                                
                            }
//                            .padding(.leading)
//                            .padding(.trailing)
                            .padding(.bottom)
                            
                            
                            HStack{
                                Text("Transmission")
                                
                                Spacer()
                            }
//                            .padding(.leading)
//                            .padding(.trailing)
                            
                            
                            
                            HStack{
                                TextField("Automatic",text:$transmission)
                                    .foregroundColor(AppColors.redGradientColor1)
                                    .padding(.vertical, 10)
                                    .autocapitalization(.none)
                                    .background(Rectangle().frame(height: 1).padding(.top, 40))
                                    .foregroundColor(.black)
                                
                            }
//                            .padding(.leading)
//                            .padding(.trailing)
//
                        }
                        
                    }
                    
                    Group{
                        
                        VStack{
                            
                            Text("Description")
                                .padding(.top,20)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.bottom,-5)
                            
                            
                            TextField("Tell us about this car",text:$description)
                                .foregroundColor(AppColors.redGradientColor1)
                                .padding(.vertical, 10)
                                .autocapitalization(.none)
                                .background(Rectangle().frame(height: 1).padding(.top, 40))
                                .foregroundColor(.black)
                            
                            
                        }
//                        .padding(.leading)
//                        .padding(.trailing)
                        
                        VStack{
                            
                            Text("Location")
                                .padding(.top,20)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.bottom,-5)
                            
                            
                            TextField("Washington, DC",text:$location)
                                .foregroundColor(AppColors.redGradientColor1)
                                .padding(.vertical, 10)
                                .autocapitalization(.none)
                                .background(Rectangle().frame(height: 1).padding(.top, 40))
                                .foregroundColor(.black)
                            
                            
                        }
//                        .padding(.leading)
//                        .padding(.trailing)
                        
                        
                        HStack{
                            Text("Upload Images")
                                .font(AppFonts.regular_16)
                            
                            Spacer()
                        }
//                        .padding(.leading)
//                        .padding(.trailing)
                        .padding(.top)
                        
                        
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


                            }
                                .padding(.top)
                        }
                        
                        HStack{

                        Image("add photo image")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: UIScreen.widthBlockSize*90, height: UIScreen.heightBlockSize*10)
                           .onTapGesture{
                                self.showSheet = true
                            }

                        }
                        
                        HStack{
                            Text("Different Contact Details")
                                .font(AppFonts.regular_16)
                            
                            Toggle("", isOn: $differentdetails)
                                .toggleStyle(SwitchToggleStyle(tint: .green))
                            
                            Spacer()
                        }
//                        .padding(.leading)
//                        .padding(.trailing)
                        .padding(.top)
                        
                        
                    }
                    
                    
                    Group{
                        
                        if(self.differentdetails){
                            Group{
                                
                                VStack{
                                    
                                    Text("Name")
                                        .padding(.top,20)
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .padding(.bottom,-5)
                                    
                                    
                                    TextField("John Wick",text:$name)
                                        .foregroundColor(AppColors.redGradientColor1)
                                        .padding(.vertical, 10)
                                        .autocapitalization(.none)
                                        .background(Rectangle().frame(height: 1).padding(.top, 40))
                                        .foregroundColor(.black)
                                    
                                    
                                }
//                                .padding(.leading)
//                                .padding(.trailing)
                                
                                
                                VStack{
                                    
                                    Text("Email")
                                        .padding(.top,20)
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .padding(.bottom,-5)
                                    
                                    
                                    TextField("123@gmail.com",text:$email)
                                        .foregroundColor(AppColors.redGradientColor1)
                                        .padding(.vertical, 10)
                                        .autocapitalization(.none)
                                        .background(Rectangle().frame(height: 1).padding(.top, 40))
                                        .foregroundColor(.black)
                                    
                                    
                                }
//                                .padding(.leading)
//                                .padding(.trailing)
                                
                                VStack{
                                    
                                    Text("Phone Number")
                                        .padding(.top,20)
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .padding(.bottom,-5)
                                    
                                    
                                    TextField("+96-43564356456",text:$phone)
                                        .foregroundColor(AppColors.redGradientColor1)
                                        .padding(.vertical, 10)
                                        .autocapitalization(.none)
                                        .background(Rectangle().frame(height: 1).padding(.top, 40))
                                        .foregroundColor(.black)
                                    
                                    
                                }
//                                .padding(.leading)
//                                .padding(.trailing)
                                
                            }
                        }
                        
                        NavigationLink(destination: Post_Product_Vehicle_Screen(), label: {
                            Text("Preview")
                                .font(AppFonts.semiBold_16)
                                .fontWeight(.medium)
                                .foregroundColor(.white)
                                .frame(width: UIScreen.widthBlockSize*90, height: UIScreen.heightBlockSize*7)
                                .background(RoundedRectangle(cornerRadius: 50).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                                .padding(.top,30)
                                .padding(.bottom)
                        })
                        
                        
                    }
                    
                }
                
                
            }
            .padding(.leading)
            .padding(.trailing)
            
            
            
            Spacer()
        }
        .sheet(isPresented: self.$showSheet) {
            
            ImagePicker(sourceType: .photoLibrary) { image in
               
                    self.photos.append(Image(uiImage: image))
                
            }
            
            
            }
        .edgesIgnoringSafeArea(.all)
            .navigationBarHidden(true)
    }
}

struct Add_classified_Services_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Add_classified_Screen()
    }
}
