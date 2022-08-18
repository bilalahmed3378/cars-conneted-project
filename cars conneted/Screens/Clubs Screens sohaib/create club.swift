//
//  create club.swift
//  cars conneted
//
//  Created by Sohaib Sajjad on 26/07/2022.
//

import SwiftUI

struct create_club: View {
    
    
    
    @State var firstName = ""
    @State var lastName = ""
    @State var number = ""
    @State var Location = ""
    @State var bio = ""
    @State var type = ""
    
    @State var photos : Array<Image> = [Image("Group 7453"),Image("Group 7453"),Image("Group 7453")]
    @State var pickingForProfile = false
    @State var showSheet = false
    
    
    @State private var selection = ""
    let colors = ["Private","Shared"]
    
    
    
    var body: some View {
        
        ScrollView(.vertical,showsIndicators: false){
        
        VStack(alignment: .leading){
            
            
            
            
            Group{
                
                Text("Create Your Club")
                    .font(.system(size:28))
                    .foregroundColor(.red)
                    .fontWeight(.medium)
                    .padding(.top,70)
                
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquet tincidunt viverra nunc scelerisque gravida odio.")
                    .padding(.top,10)
                    .foregroundColor(.gray)
                
                
                
                Text("Name")
                    .padding(.top,30)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundColor(.gray)
                
                
                
                TextField("Name",text:$firstName)
                    .padding(.vertical, 10)
                    .autocapitalization(.none)
                    .background(Rectangle().frame(height: 1).padding(.top, 42))
                    .foregroundColor(.gray)
                
                
                
                Text("Location")
                    .padding(.top,28)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundColor(.gray)
                
                
                
                TextField("Location",text:$lastName)
                    .padding(.vertical, 10)
                    .autocapitalization(.none)
                    .background(Rectangle().frame(height: 1).padding(.top, 42))
                    .foregroundColor(.gray)
                
            }
            
            
            
            
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
            
            
            Text("Club Privacy")
                .padding(.top,28)
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundColor(.gray)
            
            
            
            VStack {
                
                Picker("Club Privacy", selection: $selection) {
                    ForEach(colors, id: \.self) {
                        
                        Text($0)
                        
                    }
                }
                .pickerStyle(.menu)
                
            }.frame( maxWidth: .infinity,  alignment: .leading)
                .background(Rectangle().foregroundColor(.gray).frame(height: 1).padding(.top, 42))
            
  
            
            
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
            .padding(.top,30)
            
            
            
            
            
            Button(action: {
                
            }){
                
                HStack{
                    Spacer()
                    Text("Create")
                    
                        .font(.system(size:16, design: .rounded))
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                    Spacer()
                }
                .padding(20)
                .background(RoundedRectangle(cornerRadius: 100).fill(Color.red))
                .padding(.top,40)
                
            }
            
            
        }.padding(.leading,20)
                .padding(.trailing,20)
        
    }
    
}
}

struct create_club_Previews: PreviewProvider {
    static var previews: some View {
            create_club()
    }
}
