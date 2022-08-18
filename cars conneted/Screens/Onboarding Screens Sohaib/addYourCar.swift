//
//  addYourCar.swift
//  cars connected
//
//  Created by Sohaib Sajjad on 20/07/2022.
//

import SwiftUI

struct addYourCar: View {
    
    @State var date = Date()
    
    
    @State var firstName = ""
    @State var lastName = ""
    @State var number = ""
    @State var Location = ""
    @State var bio = ""
    @State var type = ""
    
    @State var photos : Array<Image> = [Image("Group 7453"),Image("Group 7453"),Image("Group 7453")]
    @State var pickingForProfile = false
    @State var showSheet = false
    
    
    @State private var selection = "Sedan"
    let colors = ["Sedan", "Sports", "SUV"]
    
    
    
    var body: some View {
       
        NavigationView{
        
            
            
        
        ZStack(alignment: .bottom){
            
            Image("car")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: UIScreen.screenWidth, height: UIScreen.heightBlockSize*40)
        
        VStack(alignment:.leading){
            
            ScrollView(.vertical,showsIndicators: false){
                
                VStack(alignment: .leading){
                    
                    Group{
                        
                        Text("Add Your Car")
                            .font(.system(size:28))
                            .foregroundColor(.red)
                            .fontWeight(.medium)
                            .padding(.top,70)
                        
                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquet tincidunt viverra nunc scelerisque gravida odio.")
                            .padding(.top,10)
                            .foregroundColor(.gray)
                        
                        
                        
                        Text("Brand")
                            .padding(.top,30)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .foregroundColor(.gray)
                        
                        
                        
                        TextField("Brand",text:$firstName)
                            .padding(.vertical, 10)
                            .autocapitalization(.none)
                            .background(Rectangle().frame(height: 1).padding(.top, 42))
                            .foregroundColor(.gray)
                        
                        
                        
                        Text("Model")
                            .padding(.top,28)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .foregroundColor(.gray)
                        
                        
                        
                        TextField("Model",text:$lastName)
                            .padding(.vertical, 10)
                            .autocapitalization(.none)
                            .background(Rectangle().frame(height: 1).padding(.top, 42))
                            .foregroundColor(.gray)
                        
                    }
                    
                    Group{
                        
                        Text("Color")
                            .padding(.top,28)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .foregroundColor(.gray)
                        
                        
                        
                        TextField("Color",text:$lastName)
                            .padding(.vertical, 10)
                            .autocapitalization(.none)
                            .background(Rectangle().frame(height: 1).padding(.top, 42))
                            .foregroundColor(.gray)
                        
                        
                        Text("Engine")
                            .padding(.top,28)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .foregroundColor(.gray)
                        
                        
                        
                        TextField("Engine",text:$lastName)
                            .padding(.vertical, 10)
                            .autocapitalization(.none)
                            .background(Rectangle().frame(height: 1).padding(.top, 42))
                            .foregroundColor(.gray)
                        
                        
                        Text("Type")
                            .padding(.top,28)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .foregroundColor(.gray)
                        
                        
                        
                        
                        
                        
                        //Type picker
                        
                        VStack {
                            
                            Picker("type", selection: $selection) {
                                ForEach(colors, id: \.self) {
                                    
                                    Text($0)
                                    
                                }
                            }
                            .pickerStyle(.menu)
                            
                        }.frame( maxWidth: .infinity,  alignment: .leading)
                            .background(Rectangle().foregroundColor(.gray).frame(height: 1).padding(.top, 42))
                        
                        
                        
                    }
                    
                    
                    let calendar = Calendar.current
                    let components = calendar.dateComponents([.year], from: date)
                    let year :Int = components.year ?? 2022
                    
                    Text("Year")
                        .padding(.top,28)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .foregroundColor(.gray)
                    
                    //year picker
                    
                    VStack {
                        
                        Picker("year", selection: $selection) {
                            ForEach(1970...year, id: \.self) {
                                
                                Text(String($0))
                                
                            }
                        }
                        .pickerStyle(.menu)
                        
                    }.frame( maxWidth: .infinity,  alignment: .leading)
                        .background(Rectangle().foregroundColor(.gray).frame(height: 1).padding(.top, 42))
                    
                    
                    
                    //
                    //
                    //
                    //
                    
                    Text("Description")
                        .padding(.top,28)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .foregroundColor(.gray)
                    
                    
                    
                    TextField("Description",text:$bio)
                        .padding(.vertical, 10)
                        .autocapitalization(.none)
                        .background(Rectangle().frame(height: 1).padding(.top, 42))
                        .foregroundColor(.gray)
                    
                    
                    
                    
                    LazyVGrid(columns: [GridItem(.flexible()),GridItem(.flexible()),GridItem(.flexible())]){

                        
                        if(!self.photos.isEmpty){
                            
                            ForEach(0...(self.photos.count-1) ,id: \.self){ index in
                                
                                self.photos[index]
                                    .resizable()
                                    .aspectRatio( contentMode: .fill)
                                    .frame(width: UIScreen.widthBlockSize*25, height: UIScreen.heightBlockSize*10)
                                    .cornerRadius(8)
                                    .overlay(
                                        HStack{
                                            Spacer()
                                            
                                            VStack{
                                                
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
                                                
                                                
                                                Spacer()
                                            }
                                        }
                                    )
                                
                            }
                        }
                        
                            
                            
                            Image("addMore")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: UIScreen.widthBlockSize*25, height: UIScreen.heightBlockSize*10)
                                .padding(20)
                                .background(RoundedRectangle(cornerRadius: 8).fill(.white))
                                .onTapGesture{
                                    self.showSheet = true
                                }
                            
                          
                        
                    }
                    .padding(.top,28)
                    
                    
                    
                    
                    
                    Button(action: {
                        
                    }){
                        
                        HStack{
                            Spacer()
                            Text("Save To Your Garage")
                            
                                .font(.system(size:16, design: .rounded))
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                            Spacer()
                        }
                        .padding(20)
                        .background(RoundedRectangle(cornerRadius: 100).fill(Color.red))
                        .padding(.top,40)
                        
                    }
                    
                    
                }
                
            }
            
        }.padding(.leading,24)
            .padding(.trailing,24)
            .padding(.bottom,10)
            
        }.sheet(isPresented: self.$showSheet) {
            
            ImagePicker(sourceType: .photoLibrary) { image in
               
                    self.photos.append(Image(uiImage: image))
                
            }
            
            
            }
        .navigationBarHidden(true)
        }
        
    }
}

struct addYourCar_Previews: PreviewProvider {
    static var previews: some View {
        addYourCar()
    }
}
