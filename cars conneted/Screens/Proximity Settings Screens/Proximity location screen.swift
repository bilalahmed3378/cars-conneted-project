//
//  Proximity location screen.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 16/08/2022.
//

import SwiftUI

struct Proximity_location_screen: View {
    
    @Environment (\.presentationMode) var presentationMode
    @State var searchText : String = ""
    @State var amount  = 0.0
    
    @State var distanceValue : Int = 100
    
    var body: some View {
        VStack{
        
        VStack{
            
           
            HStack{
                Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image("back icon")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 35, height: 35)
                })
              
                
               Spacer()
                
                Text("Proximity Location")
                    .foregroundColor(.white)
                    .font(AppFonts.SemiBold_20)
                    .offset(x: -15)
                
                Spacer()
                
                
                
            }.padding(.leading,20)
                .padding(.trailing,20)
                .padding(.top,20)
            
        }  .padding(.top,40)
            .padding(.bottom,30)
            .background(
                Image("home screen background")
                .resizable())
            
            
            
            HStack{
                Text("Enter your location to find nearby events")
                    .font(AppFonts.regular_14)
                
                Spacer()
            }
            .padding()
            .padding(.leading,15)
            .padding(.top,20)
            
          
            
            HStack{
                Spacer()
                VStack{
                Image("Location Precise")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: UIScreen.widthBlockSize*35, height: 120)
                   
                    
                    Text("Precise")
                        .font(AppFonts.semiBold_16)
                    
                }
                .background(RoundedRectangle(cornerRadius: 10).fill(.gray).opacity(0.2).frame(width: UIScreen.widthBlockSize*45, height: 190))
                
                
                Spacer()
                Spacer()
                
                VStack{
                    
                Image("Location Approximate")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: UIScreen.widthBlockSize*35, height: 120)
                    
                    Text("Approximate")
                        .font(AppFonts.semiBold_16)
                    
                }
                
                Spacer()
            }
            .padding(.leading)
            .padding(.trailing)
            .padding(.top,25)
            
            
            HStack{
                
                TextField("Washington, DC",text: self.$searchText)
                    .foregroundColor(.red)
                    .font(AppFonts.regular_14)
                
                Image(systemName: "magnifyingglass")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:20,height: 20)
                    .foregroundColor(.black)
                
                
            } .padding(15)
                .background(RoundedRectangle(cornerRadius: 25).strokeBorder(.gray))
                .padding(.leading)
                .padding(.trailing)
                .padding(.top,30)
            
            
            HStack{
                Text("Radius")
                    .font(AppFonts.regular_14)
                
                Spacer()
            }.padding()
                .padding(.bottom,-20)
            
//            Slider(value: $amount, in: 0...500)
//                .accentColor(.red)
//                .padding()
//
//            HStack{
//            Text("\(amount, specifier: "%.1f")")
//                Text("KM")
//            }
            
            
            SeekBar(lable: "km", maxRange: 100, color: AppColors.redGradientColor2, value: self.$distanceValue)
                .padding(.top,10)
            
            
            NavigationLink(destination: {
                MainTabContainer()
            }, label: {
                Text("Confirm")
                    .font(AppFonts.semiBold_16)
                    .foregroundColor(.white)
                    .background(RoundedRectangle(cornerRadius: 50).fill(LinearGradient(colors: [AppColors.redGradientColor1, AppColors.redGradientColor2], startPoint: .leading, endPoint: .trailing)).frame(width: UIScreen.widthBlockSize*90, height: UIScreen.heightBlockSize*7))
                    .padding(.top,30)
                
            })
           
            
            Spacer()
        }.edgesIgnoringSafeArea(.top)
            .navigationBarHidden(true)
    }
}

struct Proximity_location_screen_Previews: PreviewProvider {
    static var previews: some View {
        Proximity_location_screen()
    }
}


import SwiftUI

struct SeekBar: View {
    
    let lable : String
    let maxRange : CGFloat
    let color : Color
    @Binding var value : Int
    
    @State var drawWidth : CGFloat = UIScreen.screenWidth - 72
    @State var maxDragLimit : CGFloat = UIScreen.screenWidth - 72
    @State var minDragLimit : CGFloat = 0
    
    @State var isLessThenMax : Bool = false
    @State var isLessThen40 : Bool = false
    
    
    
    // from start circle center to end circle center
    @State var totalDragLength : CGFloat = (UIScreen.main.bounds.size.width - 40)
    
    

    
    var drag: some Gesture {
        DragGesture()
            .onChanged { value in
                if (drawWidth <= maxDragLimit && drawWidth >= 0){
                    if(value.translation.width >= 0){
                        if((drawWidth + value.translation.width) >= maxDragLimit){
                            drawWidth = maxDragLimit
                        }
                        else{
                            drawWidth += value.translation.width
                        }
                    }
                    else if (value.translation.width <= 0){
                        if((drawWidth + value.translation.width) <= 0){
                            drawWidth = 0
                        }
                        else{
                            drawWidth += value.translation.width
                        }
                    }
                    
                    if (drawWidth < maxDragLimit){
                        withAnimation{
                            self.isLessThenMax = true
                        }
                    }
                    else{
                        withAnimation{
                            self.isLessThenMax = false
                        }
                    }
                    if(drawWidth <= 40 ){
                        withAnimation{
                            isLessThen40 = true
                        }
                    }
                    else{
                        withAnimation{
                            isLessThen40 = false
                        }
                    }
                    
                    self.value = Int((self.drawWidth/self.maxDragLimit)*maxRange)
                }
            }
            .onEnded { value in
                withAnimation {
                    
                }
            }
    }
    
    
    
    
    
    var body: some View {
        
        ZStack(alignment: .top){
            
            HStack(spacing:0){
                Spacer()
                    .frame(width: drawWidth+24 , height: 8)
                    .background(RoundedRectangle(cornerRadius: 6).fill(self.color))
                    .padding(.leading,8)
                Spacer()
            }
            .frame(width : UIScreen.screenWidth-40 ,height: 8)
            .background(RoundedRectangle(cornerRadius: 6).fill(.gray.opacity(0.3)))
            .padding(.top,4)
            
           
            
            VStack(spacing: 0){
                HStack(spacing:0){
                    
                    HStack{
                        
                    }
                    .frame(width: 16, height: 16)
                    .background(Circle().fill(self.color))
                        
                    Spacer()
                        .frame(width: drawWidth , height: 8)
                    
                    HStack{
                        
                    }
                    .frame(width: 16, height: 16)
                    .background(Circle().fill(self.color))
                    .gesture(drag)
                    
                    if(self.isLessThenMax){
                        Spacer()
                    }
                    
                }
                .frame(width: UIScreen.screenWidth-40, height: 16)
                
                
                
                HStack(spacing:0){
                    
                    Text(self.lable.contains("$") ? "\(self.lable)0" : "0\(self.lable)")
                        .font(AppFonts.regular_12)
                        .foregroundColor(.gray)
                        .lineLimit(3)
                        
                    if(self.isLessThen40){
                        Spacer()
                            .frame(width: drawWidth , height: 8)
                    }
                    else{
                        Spacer()
                            .frame(width: self.lable.contains("$") ? drawWidth-20 : drawWidth-40 , height: 8)
                    }
                    
                    Text(self.lable.contains("$") ? "\(self.lable)\(self.value)" : "\(self.value)\(self.lable)")
                        .font(AppFonts.regular_12)
                        .foregroundColor(.gray)
                        .lineLimit(3)
                    
                    if(self.isLessThenMax){
                        Spacer()
                    }
                    
                }
                .frame(width: UIScreen.screenWidth-40, height: 16)
                .padding(.top,10)
                
            }
            
        }
        .onAppear{
            withAnimation{
                drawWidth = (CGFloat(self.value)*self.maxDragLimit)/self.maxRange
            }
            if (drawWidth < maxDragLimit){
                withAnimation{
                    self.isLessThenMax = true
                }
            }
            else{
                withAnimation{
                    self.isLessThenMax = false
                }
            }
            if(drawWidth <= 40 ){
                withAnimation{
                    isLessThen40 = true
                }
            }
            else{
                withAnimation{
                    isLessThen40 = false
                }
            }
            
        }
        
        
        
    }
    
}
