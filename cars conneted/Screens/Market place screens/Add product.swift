//
//  Add product.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 26/07/2022.
//

import SwiftUI

struct Add_product: View {
    @State var productName = ""
      @State var mainCategory = ""
      @State var subCategory = ""
      @State var Price = ""
    @State var Quantity = ""
      @State var Description = ""
      @State var Brand = ""
      @State var availableSizes = ""
    @State var availableColors = ""
    @State var shippingMethod = ""
    var body: some View {
        ZStack{
            
            VStack{
                // top bar
        VStack{
            
            Group{
            HStack{
                Button(action: {}, label: {
                    Image("back icon")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 35, height: 35)
                })
              
                
               Spacer()
                
                Text("Choose payment Method")
                    .foregroundColor(.white)
                    .font(.title)
                
                Spacer()
                
                Button(action: {}, label: {
                    Image("doted icons-1")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 35, height: 35)
                    
                })
               
                
            }.padding(.leading,20)
                .padding(.trailing,20)
                .padding(.top,20)
            
        }  .padding(.top,40)
            .padding(.bottom,30)
            .background(
                Image("home screen background")
                .resizable())
        }
                VStack{
                    ScrollView(.vertical, showsIndicators: false){
                        HStack{
                            
                               Text("Photos")
                                .font(.caption)
                                .foregroundColor(.gray)
                            Spacer()
                        }.padding(.bottom)
                       
                        HStack{
                            
                            Image("unsplash_DwxlhTvC16Q")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 120, height: 120)
                            Spacer()
                            Image("unsplash_DwxlhTvC16Q")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 120, height: 120)
                            Spacer()
                            Button(action: {}, label: {
                                Image("Frame 40")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 120, height: 120)
                            })
                          
                            
                            
                        }
                        .frame(width: 377, height: 100)
                      
                        Text("Product Name")
                                  .padding(.top,28)
                                  .frame(maxWidth: .infinity, alignment: .leading)
                                  .foregroundColor(.black)
                                TextField("BBS RMS 17",text:$productName)
                                  .padding(.vertical, 10)
                                  .autocapitalization(.none)
                                  .background(Rectangle().frame(height: 1).padding(.top, 42))
                                  .foregroundColor(AppColors.redGradientColor1)
                        
                        Group{
                        Text("Main Category")
                                  .padding(.top,28)
                                  .frame(maxWidth: .infinity, alignment: .leading)
                                  .foregroundColor(.gray)
                            TextField("Spare Parts",text:$mainCategory )
                                  .padding(.vertical, 10)
                                  .autocapitalization(.none)
                                  .background(Rectangle().frame(height: 1).padding(.top, 42))
                                  .foregroundColor(.gray)
                            Group{
                        Text("Sub Category")
                                  .padding(.top,28)
                                  .frame(maxWidth: .infinity, alignment: .leading)
                                  .foregroundColor(.gray)
                                TextField("Engine Spare Parts etc",text:$subCategory)
                                  .padding(.vertical, 10)
                                  .autocapitalization(.none)
                                  .background(Rectangle().frame(height: 1).padding(.top, 42))
                                  .foregroundColor(.gray)
                        
                        
                        Text("Price")
                                  .padding(.top,28)
                                  .frame(maxWidth: .infinity, alignment: .leading)
                                  .foregroundColor(.gray)
                                TextField("$",text:$Price)
                                  .padding(.vertical, 10)
                                  .autocapitalization(.none)
                                  .background(Rectangle().frame(height: 1).padding(.top, 42))
                                  .foregroundColor(.gray)
                            
                            
                            Text("Quantity")
                                      .padding(.top,28)
                                      .frame(maxWidth: .infinity, alignment: .leading)
                                      .foregroundColor(.gray)
                                    TextField("1,2,3,4...",text:$Quantity)
                                      .padding(.vertical, 10)
                                      .autocapitalization(.none)
                                      .background(Rectangle().frame(height: 1).padding(.top, 42))
                                      .foregroundColor(.gray)
                            }
                            
                            Text("Description")
                                      .padding(.top,28)
                                      .frame(maxWidth: .infinity, alignment: .leading)
                                      .foregroundColor(.gray)
                                    TextField("Write description here",text:$Description)
                                      .padding(.vertical, 10)
                                      .autocapitalization(.none)
                                      .background(Rectangle().frame(height: 1).padding(.top, 42))
                                      .foregroundColor(.gray)
                            
                            Group{
                            Text("Brand")
                                      .padding(.top,28)
                                      .frame(maxWidth: .infinity, alignment: .leading)
                                      .foregroundColor(.gray)
                                    TextField("Select brand",text:$Brand)
                                      .padding(.vertical, 10)
                                      .autocapitalization(.none)
                                      .background(Rectangle().frame(height: 1).padding(.top, 42))
                                      .foregroundColor(.gray)
                            
                            Text("Avaiable Sizes")
                                      .padding(.top,28)
                                      .frame(maxWidth: .infinity, alignment: .leading)
                                      .foregroundColor(.gray)
                                    TextField("Write sizes",text:$availableSizes)
                                      .padding(.vertical, 10)
                                      .autocapitalization(.none)
                                      .background(Rectangle().frame(height: 1).padding(.top, 42))
                                      .foregroundColor(.gray)
                            
                            
                            Text("Avaiable Colors")
                                      .padding(.top,28)
                                      .frame(maxWidth: .infinity, alignment: .leading)
                                      .foregroundColor(.gray)
                                    TextField("#Enter Color code",text:$availableColors)
                                      .padding(.vertical, 10)
                                      .autocapitalization(.none)
                                      .background(Rectangle().frame(height: 1).padding(.top, 42))
                                      .foregroundColor(.gray)
                            }

                            HStack{
                                Image("Ellipse 23")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 60, height: 60)
                                Spacer()
                                Image("Ellipse 24")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 60, height: 60)
                                Spacer()
                                Image("Ellipse 26")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 60, height: 60)
                                Spacer()
                                Image("Ellipse 27")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 60, height: 60)
                                Spacer()
                                Image("Ellipse 28")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 60, height: 60)
                            }
                            .frame(width: 377, height: 50)
                            .padding(.top)
                            
                            
                            Text("Shipping Method")
                                      .padding(.top,28)
                                      .frame(maxWidth: .infinity, alignment: .leading)
                                      .foregroundColor(.gray)
                                    TextField("#Select Shipment Method",text:$shippingMethod)
                                      .padding(.vertical, 10)
                                      .autocapitalization(.none)
                                      .background(Rectangle().frame(height: 1).padding(.top, 42))
                                      .foregroundColor(.gray)
                        
                        }
                        
                        
                        Button(action: {}, label: {
                            Text("Preview")
                                .fontWeight(.medium)
                                .foregroundColor(.white)
                                .frame(width: 350, height: 70)
                                .background(RoundedRectangle(cornerRadius: 50).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)))
                        })
                        .padding()
                       
                    }
                 
                }
                .padding()
                .padding(.leading,7)
                
                Spacer()
            }
        }.edgesIgnoringSafeArea(.top)
    }
}

struct Add_product_Previews: PreviewProvider {
    static var previews: some View {
        Add_product()
    }
}
